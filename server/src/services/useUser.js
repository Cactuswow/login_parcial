import { Sequelize } from 'sequelize'
/* driver : //  nombre_de_usuario  :  contraseña @ direccion_de_BD : puerto / nombre:Db / */
export const sequelize = new Sequelize(
  'postgres://postgres:1234@127.0.0.1:5432/postgres'
)
