import React, { useState, useEffect } from "react"
import Jesus from "./Jesus"
import Apagar from "./Apagar"

function GetFoda() {
    const [times, setTimes] = useState([])
    const [mensagem, setMensagem] = useState("")
    const [componente, setComponente] = useState("")

    function carregarDados() {
        var options = {
            method: "GET",
            headers: {
                "Content-Type": "application/json"
            }
        }
        fetch(`http://localhost:8001/sonhos`, options)
            .then(function (response) {
                if (response == null) {
                    throw new Error("Times aindas não cadastrados")
                }
                return response.json();
            })
            .then(function (dadosTimes) {
                const timesComJogadoras = []
                let timesProcessados = 0;
                for (let i = 0; i < dadosTimes.length; i++) {
                    const time = dadosTimes[i];
                    fetch(`http://localhost:8001/JogTime/${time.id}`, { method: "GET" })
                        .then(function (response) {
                            if (!response.ok) {
                                console.log("Erro ao buscar IDs de jogadoras para o time:", time.id)
                                return []
                            }
                            return response.json()
                        })
                        .then(function (idsJogadoras) {
                            const jogadorasDetalhes = []
                            let jogadorasProcessadas = 0;
                            for (let j = 0; j < idsJogadoras.length; j++) {
                                const idJogadora = idsJogadoras[j];
                                fetch(`http://localhost:8001/jogadora/${idJogadora.jogadora_id}`, { method: "GET" })
                                    .then(function (response) {
                                        if (!response.ok) {
                                            console.log("Erro ao buscar detalhes da jogadora:", idJogadora.id)
                                            return null
                                        }
                                        return response.json()
                                    })
                                    .then(function (jogadoraDetalhes) {
                                        jogadorasProcessadas++
                                        if (jogadoraDetalhes) {
                                            jogadorasDetalhes.push(jogadoraDetalhes)
                                        }
                                        if (jogadorasProcessadas === idsJogadoras.length) {
                                            time.jogadoras = jogadorasDetalhes
                                            timesComJogadoras.push(time)
                                            timesProcessados++
                                            if (timesProcessados === dadosTimes.length) {
                                                setTimes(timesComJogadoras)
                                            }
                                        }
                                    })
                            }
                            if (idsJogadoras.length === 0) {
                                timesProcessados++
                                timesComJogadoras.push({ ...time, jogadoras: [] })
                                if (timesProcessados === dadosTimes.length) {
                                    setTimes(timesComJogadoras)
                                }
                            }
                        })
                }
            })
            .catch(function () {
                console.log("Times aindas não cadastrados")
            })
    }
    function excluirTime(id) {
        fetch(`http://localhost:8001/sonhos/${id}`, { method: "DELETE" })
            .then(function (response) {
                if (!response.ok) {
                    throw new Error("Erro ao excluir o time")
                }
                return response.json()
            })
            .then(function () {
                carregarDados()
                reload()
            })
            .catch(function (error) {
                setMensagem(error.message)
            });
    }

    function reload(){
        location.reload()
    }

    function excluirJogadora(e) {
        e.preventDefault()
        var lista = e.target.value
        setComponente(<Apagar dados={lista} fun={carregarDados} />)
    }

    function editarJogadora(e) {
        e.preventDefault()
        var lista = e.target.value
        setComponente(<Jesus dados={lista} fun={carregarDados} />)
    }

    useEffect(function () {
        carregarDados()
    }, [])

    return (
        <>
            <div>
                <h1 className="a"><b>Todos os times</b></h1>
                {mensagem && <p>{mensagem}</p>}
                {times.map(function (time) {
                    return (
                        <div key={time.id} className="box ii" style={{ marginBottom: "20px" }}>
                            <h2 className="title is-4">Nome: {time.nome}</h2>
                            <p><strong>Total de Jogadoras:</strong> {time.jogadoras.length}</p>
                            <p><strong>Criador:</strong> {time.criador}</p>
                            <p><strong>Nacionalidade:</strong> {time.nacionalidade}</p>
                            <br />
                            <button onClick={function () { excluirTime(time.id); }} className="button is-danger">
                                Excluir Time
                            </button>

                            <div style={{ marginTop: "20px" }}>
                                {time.jogadoras.length === 0 ? (
                                    <p>Sem jogadoras.</p>
                                ) : (
                                    <div className="columns is-multiline">
                                        {time.jogadoras.map(function (jogadora) {
                                            return (
                                                <div key={jogadora[0].id} className="column is-one-third" style={{ marginBottom: "10px" }}>
                                                    <div className="box">
                                                        <p><strong>Nome da Jogadora:</strong> {jogadora[0].nome}</p>
                                                        <p><strong>Data de Nascimento:</strong> {jogadora[0].nascimento}</p>
                                                        <p><strong>Idade:</strong> {jogadora[0].idade}</p>
                                                        <p><strong>Nacionalidade:</strong> {jogadora[0].nacionalidade}</p>
                                                        <p><strong>Posição:</strong> {jogadora[0].posicao}</p>
                                                        <p><strong>Tipo:</strong> {jogadora[0].tipo}</p>
                                                        <p><strong>Altura:</strong> {jogadora[0].altura}</p>
                                                        {jogadora[0].ranking !== null && (
                                                            <p><strong>Ranking:</strong> {jogadora[0].ranking !== 0 ? `Top ${jogadora[0].ranking}` : ""}</p>
                                                        )}

                                                        <div className="buttons">
                                                            <button onClick={excluirJogadora} value={JSON.stringify([jogadora[0].id, jogadora[0].tipo, time.id])} className="rt button is-danger">
                                                                Excluir
                                                            </button>

                                                            {jogadora[0].tipo !== "Profissional" && (
                                                                <button onClick={editarJogadora} value={JSON.stringify([jogadora[0].id, jogadora[0].nome, jogadora[0].nascimento, jogadora[0].idade, jogadora[0].nacionalidade, jogadora[0].posicao, jogadora[0].tipo, jogadora[0].altura])} className="rp button is-danger">
                                                                    Editar
                                                                </button>
                                                            )}
                                                        </div>
                                                    </div>
                                                </div>
                                            );
                                        })}
                                    </div>
                                )}
                            </div>
                        </div>
                    )
                })}
            </div>
            {componente}
        </>
    )
}

export default GetFoda
