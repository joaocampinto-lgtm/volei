import { useState } from "react"

function Jesus(props) {
    let l = JSON.parse(props.dados)
    const f = props.fun
    const [jogadora, setJogadora] = useState({
        id: Number(l[0]),
        nome: String(l[1]),
        nascimento: String(l[2]),
        idade: Number(l[3]),
        nacionalidade: String(l[4]),
        posicao: String(l[5]),
        tipo: String(l[6]),
        altura: Number(l[7]),
    })
    const [formVisible, setFormVisible] = useState(true)

    function TratarAlteracao(e) {
        const campo = e.target.name
        const valor = campo === "altura" ? parseFloat(e.target.value) : e.target.value
        setJogadora((prevJogadora) => ({
            ...prevJogadora,
            [campo]: valor,
        }))
    }

    function TratarSubmit(evento) {
        evento.preventDefault()
        const { id, nome, nascimento, idade, nacionalidade, posicao, tipo, altura } = jogadora
        console.log(id, nome, nascimento, idade, nacionalidade, posicao, tipo, altura)

        let options = {
            method: "PUT",
            body: JSON.stringify({
                nome,
                nascimento,
                nacionalidade,
                posicao,
                tipo,
                altura,
            }),
            headers: {
                "Content-type": "application/json",
            },
        }

        fetch(`http://localhost:8001/jogadora/${id}`, options)
            .then(() => {
                setJogadora({
                    id: 0,
                    nome: "",
                    nascimento: "",
                    idade: "",
                    nacionalidade: "",
                    posicao: "",
                    tipo: "Casual",
                    altura: "",
                });
                f();
                setFormVisible(false);
            })
            .catch((error) => {
                console.log("Erro ao enviar dados:", error)
            })
    }

    return (
        <div className="columns is-centered">
            <div className="column">
                {formVisible && (
                    <form onSubmit={TratarSubmit} className="box">
                        <h3 className="title is-4">Edit da Jogadora: {jogadora.nome}</h3>

                        <div className="field">
                            <label className="label">Nome:</label>
                            <div className="control">
                                <input
                                    className="input"
                                    type="text"
                                    name="nome"
                                    value={jogadora.nome}
                                    onChange={TratarAlteracao}
                                    required
                                />
                            </div>
                        </div>

                        <div className="field">
                            <label className="label">Data de Nascimento:</label>
                            <div className="control">
                                <input
                                    className="input"
                                    type="text"
                                    name="nascimento"
                                    placeholder="DD/MM/AAAA"
                                    value={jogadora.nascimento}
                                    onChange={TratarAlteracao}
                                    required
                                />
                            </div>
                        </div>

                        <div className="field">
                            <label className="label">Nacionalidade:</label>
                            <div className="control">
                                <input
                                    className="input"
                                    type="text"
                                    name="nacionalidade"
                                    value={jogadora.nacionalidade}
                                    onChange={TratarAlteracao}
                                    required
                                />
                            </div>
                        </div>

                        <div className="field">
                            <label className="label">Altura:</label>
                            <div className="control">
                                <input
                                    className="input"
                                    type="number"
                                    step="any"
                                    name="altura"
                                    placeholder="ex:1,75"
                                    value={jogadora.altura}
                                    onChange={TratarAlteracao}
                                    required
                                />
                            </div>
                        </div>

                        <div className="field">
                            <label className="label">Posição:</label>
                            <div className="control">
                                <div className="select">
                                    <select
                                        name="posicao"
                                        value={jogadora.posicao}
                                        onChange={TratarAlteracao}
                                        required
                                    >
                                        <option value="">Selecione uma posição</option>
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
                                <input className="button is-primary" type="submit" value="Cadastrar" />
                            </div>
                        </div>
                    </form>
                )}
            </div>
        </div>
    )
}

export default Jesus



