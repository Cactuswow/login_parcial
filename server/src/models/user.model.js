import { avatars } from '../constants/constants.js'
import { sequelize } from '../services/useUser.js'

export const useUser = {
  async getUsers() {
    const users = await sequelize.query('SELECT * FROM USERS')
    return users[0]
  },
  async postUser(res, user) {
    try {
      await sequelize.query('INSERT INTO USERS (name, email, password, role, avatar) VALUES (:name, :email, :password, :role, :avatar)', {
        replacements: {
          name: user.name,
          email: user.email,
          password: user.password,
          role: user.role ?? 'customer',
          avatar: user.avatar ?? avatars.sort(() => 0.5 - Math.random())[0]
        }
      })
      res.json({
        status: true
      })
    } catch (r) {
      res.status(400).json({
        status: false
      })
    }
  },
  async getUserByLogin(email, password) {
    const users = await this.getUsers()
    return users.find(user => user.email === email && user.password === password) ?? []
  }
}
