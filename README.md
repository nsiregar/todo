# README

Sample ToDo app built with Rails 5.2

### Requirements
- Docker Enginer 18.06.0+
- docker-compose

### Running in development mode
- Clone repo with `$ git clone git@github.com:nsiregar/todo.git`
- `$ docker-compose up -d --build`
- Run database migration with `$ docker-compose exec web bundle exec rails db:migrate`
- Open application in `https://localhost:5000`

### Improvement
- [ ] Integrate with Bootstrap 4
- [ ] Create Authentication
- [ ] Add duedate to task
- [ ] Send notification for complete and expired task