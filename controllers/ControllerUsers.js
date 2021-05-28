const db = require('../config/db');

module.exports = {
   async insert(req, res){
        let datas = {
            "nome": req.body.nome,
            "email": req.body.email,
            "senha": req.body.senha
        }
        try{
            let response = await db.query('INSERT INTO usuario SET ?', [datas]);
            res.json(response);
        }catch(error){
            console.log(error);
        }
    },
    async select(req, res){
        try{
            let response = await db.query('select * from usuario');
            res.json(response[0]);
        }catch(error){
            console.log(error);
        }
    },
    async update(req, res){
        let id = req.params.id;
        let datas = {
            "nome": req.body.nome,
            "email": req.body.email,
            "senha": req.body.senha
        }
        try{
            let response = await db.query('UPDATE usuario SET ? WHERE id = ?', [datas, id]);
            res.json(response);
        }catch(error){
            console.log(error);
        }
    },
    async findAll(req, res){
        try {
            let response = await db.query('SELECT * FROM usuario');
            res.json(response[0]);
        } catch (error) {
            console.log(error);
            
        }
    },
    async findById(req, res){
        let id = req.params.id;
        try {
           let response = await db.query(`SELECT * FROM usuario WHERE id = ${id}`);
           res.json(response[0]); 
        } catch (error) {
            console.log(error);
        }
    },
    async delete(req, res){
        let id = req.params.id;
        try {
            let response = await db.query(`DELETE FROM usuario WHERE id = ${id}`);
            res.json(response);
        } catch (error) {
            console.log(error);
        }
    }
}