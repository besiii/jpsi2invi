#!/bin/bash

JobText_SaveDir=job_text/jobs703

for num in {1..15}
do
    jobOptions=jobOptions_jpsi2incl_gen_mc_mumu_event_703-${num}.sh
    echo   " #!/bin/bash                                                  " >> ${JobText_SaveDir}/${jobOptions}
    echo   "                                                              " >> ${JobText_SaveDir}/${jobOptions}
    echo   "cd \$HOME/bes/jpsi2invi/v0.1                                   " >> ${JobText_SaveDir}/${jobOptions}
    echo   "./python/sel_events_inclusive.py run/gen_mc/jpsi2mumu/job_text/rootfile_mumu_703/gen_mc_mumu_jpsi2incl_703-${num}.root run/gen_mc/jpsi2mumu/job_text/event_mumu_703/incl/jpsi2incl_gen_mc_mumu_event_703-${num}.root                                                              " >> ${JobText_SaveDir}/${jobOptions}
done

