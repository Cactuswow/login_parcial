import { userEndpoints } from './user.js'

export function mainRouter (app) {
  app.use('/user', userEndpoints())
  app.use('*', (req, res) => res.status(404).send('Not Found'))
}
