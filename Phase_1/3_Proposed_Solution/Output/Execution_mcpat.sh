echo "Executing mcpat for blackscholes"
cd mcpat/gem5_to_mcpat
python GEM5ToMcPAT.py ../../blackscholes/stats.txt ../../blackscholes/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/blackscholes_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for bodytrack"
python GEM5ToMcPAT.py ../../bodytrack/stats.txt ../../bodytrack/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/bodytrack_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for canneal"
python GEM5ToMcPAT.py ../../canneal/stats.txt ../../canneal/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/canneal_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for dedup"
python GEM5ToMcPAT.py ../../dedup/stats.txt ../../dedup/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/dedup_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for ferret"
python GEM5ToMcPAT.py ../../ferret/stats.txt ../../ferret/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/ferret_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for fluidanimate"
python GEM5ToMcPAT.py ../../fluidanimate/stats.txt ../../fluidanimate/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/fluidanimate_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for freqmine"
python GEM5ToMcPAT.py ../../freqmine/stats.txt ../../freqmine/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/freqmine_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for streamcluster"
python GEM5ToMcPAT.py ../../streamcluster/stats.txt ../../streamcluster/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/streamcluster_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for swaptions"
python GEM5ToMcPAT.py ../../swaptions/stats.txt ../../swaptions/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/swaptions_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for vips"
python GEM5ToMcPAT.py ../../vips/stats.txt ../../vips/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/vips_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml

echo "Executing mcpat for x264"
python GEM5ToMcPAT.py ../../x264/stats.txt ../../x264/config.json 4core_template-xeon.xml
cd ../mcpat
./mcpat -infile ../gem5_to_mcpat/mcpat-out.xml > ../../7_mcpat_Output/x264_prp_mcpat.txt
cd ../gem5_to_mcpat
rm mcpat-out.xml
cd ../..

