import { useState, useEffect } from "react"

function CadastroJogadoraTime() {
    const [jogadoraTime, setJogadoraTime] = useState({
        idJ: "",
        idT: ""
    })

    const [isCasual, setIsCasual] = useState(null)
    const [jogadorasCasuais, setJogadorasCasuais] = useState([])
    const [jogadoraNome, setJogadoraNome] = useState("")
    const [times, setTimes] = useState([])
    const [mensagem, setMensagem] = useState("")

    useEffect(() => {
        fetch("http://localhost:8001/sonhos")
            .then((res) => res.json())
            .then((data) => {
                if (Array.isArray(data)) {
                    setTimes(data)
                } else {
                    console.error("A resposta não é um array", data)
                    setTimes([])
                }
            })
            .catch((err) => {
                console.log("Times ainda não cadastrados")
                setTimes([])
            })
    }, [])

    const fetchJogadorasCasuais = async () => {
        const res = await fetch("http://localhost:8001/jogadorac")
        if (res.ok) {
            const data = await res.json()
            setJogadorasCasuais(data)
            if (data.length === 0) {
                setIsCasual(null)
            }
        }
    }

    const buscarJogadoraPorNome = async () => {
        const res = await fetch(`http://localhost:8001/jogadoraa/${jogadoraNome}`)
        if (res.ok) {
            const data = await res.json()
            setJogadoraTime({
                idJ: data.jogadoras[0].id,
                idT: jogadoraTime.idT
            })
            setMensagem("")
        } else {
            setMensagem("Jogadora profissional não encontrada")
        }
    }

    const handleSubmit = (e) => {
        e.preventDefault()
        const dados = {
            idJ: parseInt(jogadoraTime.idJ, 10),
            idT: parseInt(jogadoraTime.idT, 10)
        }
        console.log(dados)
        const options = {
            method: "POST",
            body: JSON.stringify(dados),
            headers: {
                "Content-Type": "application/json"
            }
        }

        fetch("http://localhost:8001/JogTime", options)
            .then((response) => {
                if (response.ok) {
                    setJogadoraTime({ idJ: "", idT: "" })
                    setIsCasual(null)
                    setJogadorasCasuais([])
                    setJogadoraNome("")
                    setMensagem("Cadastro realizado com sucesso!")
                    reload()
                    return response.json()
                }
            })
            .then(function () {})
            .catch(() => setMensagem("Erro ao cadastrar jogadora no time"))
    }

    function reload(){
        location.reload()
    }

    return (
        <>
            <div className="columns is-centered">
                <div className="column">
                    <form onSubmit={handleSubmit} className="box">
                        <h3 className="title is-4">Cadastro de Jogadora no Time</h3>
                        {isCasual === null && (
                            <div className="field">
                                <p className="label">Tipo de Jogadora:</p>
                                <div className="buttons is-centered">
                                    <button
                                        className="button is-info is-dark is-rounded is-margin-right-3"
                                        type="button"
                                        onClick={() => {
                                            setIsCasual(true)
                                            fetchJogadorasCasuais()
                                        }}
                                    >
                                        Casual
                                    </button>
                                    <button
                                        className="button is-info is-dark is-rounded is-margin-left-3"
                                        type="button"
                                        onClick={() => setIsCasual(false)}
                                    >
                                        Profissional
                                    </button>
                                </div>
                            </div>
                        )}
                        {isCasual === true && jogadorasCasuais.length > 0 && (
                            <div className="field">
                                <p className="label">Escolha a Jogadora</p>
                                <div className="buttons is-flex-wrap-wrap is-centered">
                                    {jogadorasCasuais.map((jogadora) => (
                                        <button
                                            key={jogadora.id}
                                            className="button is-link is-margin-right-3"
                                            type="button"
                                            onClick={() => {
                                                setJogadoraTime({
                                                    idJ: jogadora.id,
                                                    idT: jogadoraTime.idT
                                                })
                                                setIsCasual(null)
                                            }}
                                        >
                                            {jogadora.nome}
                                        </button>
                                    ))}
                                </div>
                            </div>
                        )}
                        {isCasual === true && jogadorasCasuais.length === 0 && (
                            <div className="field">
                                <p className="label has-text-danger">Nenhuma jogadora casual encontrada. Cadastre uma!.</p>
                                <div className="buttons is-centered">
                                    <button
                                        className="button is-info is-dark is-rounded is-margin-right-3"
                                        type="button"
                                        onClick={() => {
                                            setIsCasual(null)
                                        }}
                                    >
                                        Voltar
                                    </button>
                                    <button
                                        className="button is-info is-dark is-rounded is-margin-left-3"
                                        type="button"
                                        onClick={() => {
                                            setIsCasual(false)
                                        }}
                                    >
                                        Profissional
                                    </button>
                                </div>
                            </div>
                        )}
                        {isCasual === false && (
                            <div className="field">
                                <p className="label">Digite o nome da Jogadora:</p>
                                <div className="control">
                                    <input
                                        className="input"
                                        type="text"
                                        name="jogadoraNome"
                                        value={jogadoraNome}
                                        onChange={(e) => setJogadoraNome(e.target.value)}
                                        placeholder="Nome da jogadora"
                                    />
                                </div>
                                <br />
                                <button
                                    className="button is-primary"
                                    type="button"
                                    onClick={buscarJogadoraPorNome}
                                >
                                    Submeter
                                </button>
                            </div>
                        )}
                        <br />
                        {jogadoraTime.idJ && !mensagem && (
                            <div className="field">
                                <p>Jogadora selecionada: ID {jogadoraTime.idJ}</p>
                            </div>
                        )}
                        {mensagem && (
                            <div className="field">
                                <p className="has-text-danger">{mensagem}</p>
                            </div>
                        )}
                        <div className="field">
                            <p className="label">Escolha o time</p>
                            {Array.isArray(times) && times.length > 0 ? (
                                <div className="buttons is-flex-wrap-wrap is-centered">
                                    {times.map((time) => (
                                        <button
                                            key={time.id}
                                            className="button is-info is-dark is-rounded is-margin-right-3"
                                            type="button"
                                            onClick={() => {
                                                setJogadoraTime({
                                                    idJ: jogadoraTime.idJ,
                                                    idT: time.id
                                                })
                                            }}
                                        >
                                            {time.nome}
                                        </button>
                                    ))}
                                </div>
                            ) : (
                                <p>Sem times dos sonhos cadastrados, cadastre um!</p>
                            )}
                        </div>
                        {jogadoraTime.idT && (
                            <div className="field">
                                <p>Time selecionado: {times.find((time) => time.id === jogadoraTime.idT)?.nome}</p>
                            </div>
                        )}
                        <div className="field">
                            <input className="button is-primary" type="submit" value="Cadastrar" />
                        </div>
                    </form>
                </div>
            </div>
        </>
    )
}

export default CadastroJogadoraTime
