import React, { useState } from "react"

function CadastroJogadora() {
    const [formData, setFormData] = useState({
        nome: "",
        nascimento: "",
        nacionalidade: "",
        posicao: "",
        tipo: "Casual",
        altura: ""
    });
    let a
    const [mensagem, setMensagem] = useState("")

    const handleChange = (e) => {
        const name = e.target.name;
        const value = e.target.value
        if (e.target.name == "altura") {
            a = parseFloat(value);
        } else {
            a = value
        }
        setFormData(function (prevData) {
            const newData = {}
            for (const key in prevData) {
                if (prevData.hasOwnProperty(key)) {
                    newData[key] = prevData[key]
                }
            }
            if (name in newData) {
                newData[name] = a
            }
            return newData
        })
    }

    const handleSubmit = async (e) => {
        e.preventDefault()

        const bodyData = {}
        for (const key in formData) {
            bodyData[key] = formData[key]
        }

        try {
            const response = await fetch(`http://localhost:8001/jogadora`, {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(bodyData),
            })

            if (!response.ok) {
                const errorData = await response.json()
                throw new Error(errorData.msg || "Jogadora ja cadastrado!")
            }

            const data = await response.json()
            setMensagem(data.msg)
            setFormData({
                nome: "",
                nascimento: "",
                nacionalidade: "",
                posicao: "",
                tipo: "Casual",
                altura: ""
            })
            Reload()
        } catch (error) {
            setFormData({
                nome: "",
                nascimento: "",
                nacionalidade: "",
                posicao: "",
                tipo: "Casual",
                altura: ""
            })
            setMensagem(error.message)
        }
    }

    return (
        <div className="columns is-centered">
            <div className="column">
                <form onSubmit={handleSubmit} className="box">
                    <h1 className="title is-4">Cadastro de jogadora casual</h1>

                    <div className="field">
                        <label className="label">Nome</label>
                        <div className="control">
                            <input
                                className="input"
                                type="text"
                                name="nome"
                                value={formData.nome}
                                onChange={handleChange}
                                required
                            />
                        </div>
                    </div>

                    <div className="field">
                        <label className="label">Data de Nascimento</label>
                        <div className="control">
                            <input
                                className="input"
                                type="text"
                                name="nascimento"
                                placeholder="DD/MM/AAAA"
                                value={formData.nascimento}
                                onChange={handleChange}
                                required
                            />
                        </div>
                    </div>

                    <div className="field">
                        <label className="label">Nacionalidade</label>
                        <div className="control">
                            <input
                                className="input"
                                type="text"
                                name="nacionalidade"
                                value={formData.nacionalidade}
                                onChange={handleChange}
                                required
                            />
                        </div>
                    </div>

                    <div className="field">
                        <label className="label">Altura</label>
                        <div className="control">
                            <input
                                className="input"
                                type="number"
                                step="any"
                                name="altura"
                                placeholder="ex:1,75"
                                value={formData.altura}
                                onChange={handleChange}
                                required
                            />
                        </div>
                    </div>

                    <div className="field">
                        <label className="label">Posição</label>
                        <div className="control">
                            <div className="select">
                                <select
                                    name="posicao"
                                    value={formData.posicao}
                                    onChange={handleChange}
                                    required
                                >
                                    <option value="Oposta">Oposta</option>
                                    <option value="Levantadora">Levantadora</option>
                                    <option value="Ponteira">Ponteira</option>
                                    <option value="Líbero">Líbero</option>
                                    <option value="Central">Central</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div className="field">
                        <div className="control">
                            <button className="button is-primary" type="submit" value="Cadastrar">cadastrar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    )
}

function Reload(){
    location.reload()
}

export default CadastroJogadora;

