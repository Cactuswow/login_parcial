import { useUser } from '../models/user.model.js'

export const userController = {
  getUsers: async (req, res) => {
    res.json(await useUser.getUsers())
  },
  getUser: async (req, res) => {
    const { id } = req.params
    res.json(await userController.getUser(id))
  },
  postUser: async (req, res) => {
    const { name, email, password } = req.body
    await useUser.postUser({ name, email, password })
    res.send('postUser')
  }
}
