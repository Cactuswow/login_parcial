import { useUser } from '../services/useUser.js'

export const userController = {
  getUsers: (req, res) => {
    res.json(useUser.getUsers())
  },
  getUser: (req, res) => {
    const { id } = req.params
    res.json(userController.getUser(id))
  },
  postUser: (req, res) => {
    const { name, email, password } = req.body
    useUser.postUser({ name, email, password })
    res.send('postUser')
  }
}
