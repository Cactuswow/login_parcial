const users = [
  {
    id: 1,
    email: 'a@gmail.com',
    password: 'X',
    role: 'X',
    avatar: 'XD',
    name: 'Mango'
  },
  {
    id: 2,
    email: 'X',
    password: 'X',
    role: 'X',
    avatar: 'XD',
    name: 'Poly'
  }
]

export const useUser = {
  getUsers () {
    return users
  },
  postUser (user) {
    users.push(user)
  },
  getUserByID (id) {
    return users.find(user => user.id === id)
  },
  getUserByLogin (email, password) {
    return users.find(user => user.email === email && user.password === password)
  }
}
