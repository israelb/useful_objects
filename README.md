# Gohan

## Software stack

Gohan is a Ruby on Rails CQRS/Event Sourcing service that runs on the following software:

- Ubuntu/Debian/CentOS/RHEL/OpenSUSE
- Ruby (MRI) 3.0.1
- PostgreSQL

## Local Development
Two private gem repositories are used (GitHub and Sidekiq Enterprise)
In order to setup authentication for those repositories use the following commands:

```bash
bundle config set --global rubygems.pkg.github.com USERNAME:TOKEN
bundle config set --global enterprise.contribsys.com SIDEKIK_USER:SIDEKIQ_PASSWORD
```

Where:
- `USERNAME` is your GitHub handle
- `TOKEN` is your personal acess token with packages read permissions.
- `SIDEKIQ_USER/PASSWORD` are Sidekiq enterprise credentials (ask other devs for them)

## Documentation

All documentation can be found on [docs](/doc).
