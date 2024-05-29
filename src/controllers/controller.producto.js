import pool from "../config/mysql.db";

export const mostrarProducto = async (req,res) =>{
const {id} = req.params;
try {
    const respuesta = await pool.query(`CALL SP_MOSTRAR_PRODUCTO("${id}");`);
    res.json({"respuesta": respuesta[0][0]})
} catch (error) {
    res.json({"error": error})
}
}
export const listarProducto = async (req,res) =>{
try {
    const respuesta = await pool.query(`CALL SP_LISTAR_PRODUCTO ();`);
    res.json({"respuesta": respuesta})
} catch (error) {
    res.json({"error": error})
}
}
export const crearProducto = async (req,res) =>{
const {producto, descripcion} = req.body;
try {
    const respuesta = await pool.query(`CALL SP_CREAR_PRODUCTO ("${producto}", "${descripcion}")`)
    res.json({"respuesta": "el producto ha sido creado"})
} catch (error) {
    res.json ({"error": "el producto no ha sido creado"})
}
}
export const modificarProducto = async (req,res) =>{
const {id, producto, descripcion}= req.body;
try {
    const respuesta = await pool.query (`CALL SP_MODIFICAR_PRODUCTO ("${id}", "${producto}", "${descripcion}");`);
    res.json({"respuesta": "el producto ha sido modificado"})
} catch (error) {
    res.json({"respuesta": "el producto no ha sido modificado"})
}
}
export const eliminarProducto = async (req,res) =>{
    const {id}= req.body;
    try {
        const respuesta = await pool.query(`CALL SP_ELIMINAR_PRODUCTO("${id}")`)
        res.json({"respuesta": "se elimino el producto"})
    } catch (error) {
        res.json({"error": "el producto no se pudo eliminar"})
    }
}