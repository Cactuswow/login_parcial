import { sequelize } from '../services/useUser.js'

export const useUser = {
  async getUsers () {
    const users = await sequelize.query('SELECT * FROM USERS')
    return users[0]
  },
  async postUser (user) {
    await sequelize.query('INSERT INTO USERS (name, email, password, role, avatar) VALUES (:name, :email, :password, :role, :avatar)', {
      replacements: {
        name: user.name,
        email: user.email,
        password: user.password,
        role: user.role ?? 'customer',
        avatar: user.avatar ?? 'floopa'
      }
    })
  },
  async getUserByLogin (email, password) {
    const users = await this.getUsers()
    return users.find(user => user.email === email && user.password === password)
  }
}
