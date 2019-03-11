# README

Sample ToDo app built with Rails 5.2

### Requirements
- Docker Engine 18.06.0+
- docker-compose

### Running in development mode
- Clone repo with `$ git clone git@github.com:nsiregar/todo.git`
- Run image with `$ docker-compose up -d --build`, it will mount `./postgres/data` as database storage. If you got permission error just re-run command with `sudo` priviledges.
- Run database migration with `$ docker-compose exec web bundle exec rails db:migrate`
- Open application in `https://localhost:5000`

### Improvement
- [x] Integrate with Bootstrap 4
- [x] Add basic test for app
- [ ] Create Authentication
- [ ] Add duedate to task
- [ ] Send notification for complete and expired task
