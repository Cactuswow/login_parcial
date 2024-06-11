import { useUser } from '../models/user.model.js'

export const userController = {
  getUsers: async (req, res) => {
    res.json(await useUser.getUsers())
  },
  getUser: async (req, res) => {
    const { email, password } = req.query
    console.log({ email, password });
    const data = await useUser.getUserByLogin(email, password)
    console.log(data);
    res.json(data)
  },
  postUser: async (req, res) => {
    const { name, email, password } = req.body
    await useUser.postUser(res, { name, email, password })
  }
}
