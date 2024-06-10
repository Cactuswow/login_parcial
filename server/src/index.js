import express, { json } from 'express'
import cors from 'cors'
import { mainRouter } from './routes/router.js'

const app = express()
app.use(json())
app.use(cors())
mainRouter(app)

app.listen(5000, () => console.log('Server running on http://localhost:5000'))
