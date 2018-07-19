/*
 * Copyright (c) 2012-2013 ARM Limited
 * All rights reserved.
 *
 * The license below extends only to copyright in the software and shall
 * not be construed as granting a license to any other intellectual
 * property including but not limited to intellectual property relating
 * to a hardware implementation of the functionality of the software
 * licensed hereunder.  You may use the software subject to the license
 * terms below provided that you ensure that this notice is replicated
 * unmodified and in its entirety in all distributions of the software,
 * modified or unmodified, in source code or in binary form.
 *
 * Copyright (c) 2003-2005,2014 The Regents of The University of Michigan
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met: redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer;
 * redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution;
 * neither the name of the copyright holders nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Authors: Erik Hallnor
 */

/**
 * @file
 * Definitions of a LRU tag store.
 */

#include "debug/CacheRepl.hh"
#include "mem/cache/tags/lru.hh"
#include "mem/cache/base.hh"

LRU::LRU(const Params *p)
    : BaseSetAssoc(p)
{
}

CacheBlk*
LRU::accessBlock(Addr addr, bool is_secure, Cycles &lat, int master_id)
{
    CacheBlk *blk = BaseSetAssoc::accessBlock(addr, is_secure, lat, master_id);

    if (blk != NULL) {

		/** Begin of Changes - Phase 1 */

		int threshold = 8;
		char flag;

		if(blk->counter != threshold-1){
			blk->counter++;
			blk->writeCount++;
		} else {
			flag = 'X';
			for(int i = 1; i < assoc; i++){
				BlkType *temp_blk = sets[blk->set].blks[i];
				if(temp_blk->counter == 0){				
					
					/* Finding the number of transition for moving from hot block to cold block */
					const uint8_t *incoming	= blk->data;
					const uint8_t *existing = temp_blk->data;
					int parser = 0;

					while(parser < 8) {
						uint64_t new_data, old_data;
						new_data =	(uint64_t) incoming[0] | 
								 	(uint64_t) incoming[1] << 8 | 
								  	(uint64_t) incoming[2] << 16 | 
								  	(uint64_t) incoming[3] << 24 | 
								  	(uint64_t) incoming[4] << 32 | 
								  	(uint64_t) incoming[5] << 40 |
								  	(uint64_t) incoming[6] << 48 |
								  	(uint64_t) incoming[7] << 56;			
			
						old_data =  (uint64_t) existing[0] | 
									(uint64_t) existing[1] << 8 | 
			 						(uint64_t) existing[2] << 16 | 
									(uint64_t) existing[3] << 24 | 
									(uint64_t) existing[4] << 32 | 
									(uint64_t) existing[5] << 40 |
									(uint64_t) existing[6] << 48 |
									(uint64_t) existing[7] << 56;
						
						int j = 0;
						while(j < 64){
							bool old_bit = old_data & 1;
							bool new_bit = new_data & 1;
							/* Calculating the number of 0 to 1 transition & 
														 1 to 0 transition */
							if(old_bit != new_bit) {
								if(old_bit == 0){
									temp_blk->transition_01++;
									blk->transition_10++;
								} else {
									temp_blk->transition_10++;
									blk->transition_01++;
								}
								temp_blk->total_trans++;
								blk->total_trans++;
							} 
							old_data = old_data >> 1;
							new_data = new_data >> 1;
							j++;
						}
						incoming += 8; 
						existing += 8;
						parser++;
					}

					/* Swapping the number of write hit value */
					unsigned long int temp = temp_blk->writeCount;
					temp_blk->writeCount = blk->writeCount;
					blk->writeCount = temp;
					
					/* Swapping the number of 0 to 1 transition */
					temp = temp_blk->transition_01;
					temp_blk->transition_01 = blk->transition_01;
					blk->transition_01 = temp;

					/* Swapping the number of 1 to 0 transition */
					temp = temp_blk->transition_10;
					temp_blk->transition_10 = blk->transition_10;
					blk->transition_10 = temp;

					/* Swapping the number of transition */
					temp = temp_blk->total_trans;
					temp_blk->total_trans = blk->total_trans;
					blk->total_trans = temp;

					blk->counter = temp_blk->counter = threshold/2;
					flag = 'Y';
					blk->writeCount++; 
					temp_blk->writeCount++;
					blk->Totalwrite++; 
					temp_blk->Totalwrite++;
					break;
				}
			}
			if(flag == 'X'){
				for(int i = 1; i < assoc; i++){
					BlkType *temp_blk = sets[blk->set].blks[i];
					temp_blk->counter--;
				}
				blk->writeCount++;
			} 
		}	

		/** End of Changes - Phase 1 */

        // move this block to head of the MRU list
        sets[blk->set].moveToHead(blk);
        DPRINTF(CacheRepl, "set %x: moving blk %x (%s) to MRU\n",
                blk->set, regenerateBlkAddr(blk->tag, blk->set),
                is_secure ? "s" : "ns");
    }

    return blk;
}

CacheBlk*
LRU::findVictim(Addr addr, PacketPtr pkt, bool isTopLevel)	// change - Phase 1
{
    int set = extractSet(addr);
    // grab a replacement candidate

	/** Begin of Changes - Phase 1 */

	const uint8_t *temp	= pkt->getConstPtr<uint8_t>();
	BlkType *target = NULL;

	if(isTopLevel){
		target = sets[set].blks[assoc-1];
	} else {
		char avail = 'N', inv = 'N';
		int threshold = 8;
		int t_01 = 0, t_10 = 0, inv_01 = 0, inv_10 = 0, trans_01 = 513, trans_10 = 513;

		for(int i = 0; i < assoc; i++){
			BlkType *check_blk = sets[set].blks[i];
			if(check_blk->counter == 0){
				avail = 'Y';
				break;
			}
		}

		/** Integrating with LER */

		for(int i = assoc-1; i >= 0; i--){
			t_01 = 0, t_10 = 0, inv_01 = 0, inv_10 = 0;
			BlkType *blk = sets[set].blks[i];
			if(blk->counter == threshold-1 && avail == 'Y')
				continue;
			const uint8_t *incoming = temp;
			const uint8_t *existing = blk->data;
			int parser = 0;
			while(parser < 8) {
				uint64_t new_data, old_data;
				new_data =	(uint64_t) incoming[0] | 
						 	(uint64_t) incoming[1] << 8 | 
						  	(uint64_t) incoming[2] << 16 | 
						  	(uint64_t) incoming[3] << 24 | 
						  	(uint64_t) incoming[4] << 32 | 
						  	(uint64_t) incoming[5] << 40 |
						  	(uint64_t) incoming[6] << 48 |
						  	(uint64_t) incoming[7] << 56;			
		
				old_data =  (uint64_t) existing[0] | 
							(uint64_t) existing[1] << 8 | 
	 						(uint64_t) existing[2] << 16 | 
							(uint64_t) existing[3] << 24 | 
							(uint64_t) existing[4] << 32 | 
							(uint64_t) existing[5] << 40 |
							(uint64_t) existing[6] << 48 |
							(uint64_t) existing[7] << 56;
		
				if(blk->inv_flag == 'Y')
					old_data = ~old_data;
	
				int j = 0;
				while(j < 64){
					bool old_bit = old_data & 1;
					bool new_bit = new_data & 1;
					if(old_bit != new_bit) {
						if(old_bit == 0)
							t_01++;
						else
							t_10++;
					} else {
						if(old_bit == 0)
							inv_01++;
						else
							inv_10++;
					}
					old_data = old_data >> 1;
					new_data = new_data >> 1;
					j++;
				}
				incoming += 8; 
				existing += 8;
				parser++;
			}

			if(t_01 < trans_01 && t_01 < inv_01 && !(blk->isValid())){
				trans_01 = t_01;
				trans_10 = t_10;
				target = blk;	 
				inv = 'N';
			} else {
				trans_01 = inv_01;
				trans_10 = inv_10;
				target = blk;
				inv = 'Y';
			}
		}

		if(target == NULL){
			for(int i = assoc-1; i >= 0; i--){
				t_01 = 0, t_10 = 0, inv_01 = 0, inv_10 = 0;
				BlkType *blk = sets[set].blks[i];
				if(blk->counter == threshold-1 && avail == 'Y')
					continue;
				const uint8_t *incoming = temp;
				const uint8_t *existing = blk->data;
				int parser = 0;
				while(parser < 8) {
					uint64_t new_data, old_data;
					new_data =	(uint64_t) incoming[0] | 
							 	(uint64_t) incoming[1] << 8 | 
							  	(uint64_t) incoming[2] << 16 | 
							  	(uint64_t) incoming[3] << 24 | 
							  	(uint64_t) incoming[4] << 32 | 
							  	(uint64_t) incoming[5] << 40 |
							  	(uint64_t) incoming[6] << 48 |
							  	(uint64_t) incoming[7] << 56;			
	
					old_data =  (uint64_t) existing[0] | 
								(uint64_t) existing[1] << 8 | 
		 						(uint64_t) existing[2] << 16 | 
								(uint64_t) existing[3] << 24 | 
								(uint64_t) existing[4] << 32 | 
								(uint64_t) existing[5] << 40 |
								(uint64_t) existing[6] << 48 |
								(uint64_t) existing[7] << 56;
	
					int j = 0;
					while(j < 64){
						bool old_bit = old_data & 1;
						bool new_bit = new_data & 1;
						if(old_bit != new_bit) {
							if(old_bit == 0)
								t_01++;
							else
								t_10++;
						} else {
							if(old_bit == 0)
								inv_01++;
							else
								inv_10++;
						}
						old_data = old_data >> 1;
						new_data = new_data >> 1;
						j++;
					}
					incoming += 8; 
					existing += 8;
					parser++;
				}

				if(t_01 < trans_01 && t_01 < inv_01){
					trans_01 = t_01;
					trans_10 = t_10;
					target = blk;
					inv = 'N';	 
				} else {
					trans_01 = inv_01;
					trans_10 = inv_10;
					target = blk;
					inv = 'Y';	 
				}
			}
		}

		target->transition_01 += trans_01;
		target->transition_10 += trans_10;
		target->total_trans += trans_01 + trans_10;
		target->writeCount++;
		target->Totalwrite++;
		target->inv_flag = inv;

		if(target->counter == threshold-1 && avail == 'N'){
			for(int i = 0; i < assoc; i++){
				BlkType *check_blk = sets[set].blks[i];
				if(check_blk != target)
					check_blk->counter--;
			}
		} else {
			target->counter++;
		}
	}

	/** End of Changes - Phase 1 */

    if (target->isValid()) {
        DPRINTF(CacheRepl, "set %x: selecting blk %x for replacement\n",
                set, regenerateBlkAddr(target->tag, set));
    }

    return target;
}

void
LRU::insertBlock(PacketPtr pkt, BlkType *blk)
{
    BaseSetAssoc::insertBlock(pkt, blk);

    int set = extractSet(pkt->getAddr());
    sets[set].moveToHead(blk);
}

void
LRU::invalidate(CacheBlk *blk)
{
    BaseSetAssoc::invalidate(blk);

    // should be evicted before valid blocks
    int set = blk->set;
    sets[set].moveToTail(blk);
}

LRU*
LRUParams::create()
{
    return new LRU(this);
}
