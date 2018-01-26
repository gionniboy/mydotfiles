# fish has no wait command - we need to create it to sync/wait background process
# First, to check if there are tasks running in the background, parse the output from the jobs builtin.
# to do that we use has_jobs and get_jobs
# Then, block the foreground until, all background jobs are finished.
# here we use wait
#
# UPDATE
# NOT NEEDED FROM FISH 2.7.1
# https://github.com/fish-shell/fish-shell/pull/4498
#

# parse by job ID
function has_jobs
    jobs $argv | command awk -v FS=\t '
        /[0-9]+\t/{
            jobs[++nJobs] = $1
        }
        END {
            for (i in jobs) {
                print(jobs[i])
            }
            exit nJobs == 0
        }
    '
end

# parse by group ID
function get_jobs
    jobs -g | command awk 'NR > 0 { print; i++ } END { exit i == 0 }'
end

# wait
function wait
    while true
        set -l has_jobs
        set -l all_jobs (get_jobs)
        or break

        for j in $argv
            if contains -- $j $all_jobs
                set -e has_jobs
                break
            end
        end

        if set -q has_jobs
            break
        end
    end
end