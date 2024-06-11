import { Router } from 'express'
import { userController } from '../controllers/userController.js'

export function userEndpoints() {
  const { getUser, getUsers, postUser } = userController
  const router = Router()

  router
    .get('/', getUsers)
    .post('/', postUser)
    .get('/getLogin', getUser)

  return router
}
