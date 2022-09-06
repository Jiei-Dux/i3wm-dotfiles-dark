#! /usr/bin/env bash

#############################################
# AUTOMATED KEYBOARD BACKLIGHT a.k.a. A-K-B #
#############################################

while true; do

    current_hr=$((10#$(date +'%H')))
    current_min=$((10#$(date +'%M')))
    six_am=6
    eight_am=8
    six_pm=18

    # Turns off at 8am
    if [[ current_hr -eq eight_am ]]; then

        next_check=43200 # 12 hrs in s
        xset -led named 'Scroll Lock'

        echo 'Next check at' $(date -d "now + $next_check seconds")',' 'approx' $(($next_check/60/60)) 'hrs from now.'
        sleep $next_check


    # Turns on at 6pm
    elif [[ current_hr -eq six_pm ]]; then

        next_check=43200 # 12 hrs in s
        xset led named 'Scroll Lock'

        echo 'Next check at' $(date -d "now + $next_check seconds")',' 'approx' $(($next_check/60/60)) 'hrs from now.'
        sleep $next_check

    # Turned on 'til 8am
    elif [[ current_hr -lt eight_am ]]; then

        min_to_six=$(($((10#$six_am*60 + 10#0)) - $((10#$current_hr*60 + 10#$current_min))))
        next_check=$(($min_to_six * 60))
        xset led named 'Scroll Lock'

        echo 'Next check at' $(date -d "now + $next_check seconds")',' 'approx' $(($next_check/60/60)) 'hrs from now.'
        sleep $next_check

    # Turned off 'til 6pm
    elif [[ current_hr -lt six_pm ]]; then

        min_to_six=$(($((10#$six_pm*60 + 10#0)) - $((10#$current_hr*60 + 10#$current_min))))
        next_check=$(($min_to_six * 60))
        xset -led named 'Scroll Lock'

        echo 'Next check at' $(date -d "now + $next_check seconds")',' 'approx' $(($next_check/60/60)) 'hrs from now.'
        sleep $next_check

    # Turned on at 6pm 'til 8am
    elif [[ current_hr -gt six_pm ]]; then

        hrs_to_twelve_am=$(($((10#24*60 + 10#0)) - $((10#$current_hr*60 + 10#$current_min))))
        min_to_six=$(($((10#$hrs_to_twelve_am + 10#0)) + $((10#6*60 + 10#0))))

        next_check=$(($min_to_six * 60))
        xset led named 'Scroll Lock'

        echo 'Next check at' $(date -d "now + $next_check seconds")',' 'approx' $(($next_check/60/60)) 'hrs from now.'
        sleep $next_check
    fi

done
