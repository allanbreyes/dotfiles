alias sc='script/console'
alias sg='script/generate'
alias sd='script/destroy'
# Rails
alias be='bundle exec'
alias devlog='tail -f $(git rev-parse --show-toplevel)/log/development.log'
alias prodlog='tail -f $(git rev-parse --show-toplevel)/log/production.log'
alias testlog='tail -f $(git rev-parse --show-toplevel)/log/test.log'

# Foreman
alias fs='foreman start'
alias fr='foreman run'
alias frc='foreman run rails console'
