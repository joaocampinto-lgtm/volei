import React, { useState } from "react"

function Pesquisa(props) {
    const [nome, setNome] = useState("")
    const [d, setDados] = useState(null)
    const [erro, setError] = useState(null)
    const f = props.fun

    const buscarJogadora = async (e) => {
        e.preventDefault()
        setError("")
        setDados(null)
        try {
            const response = await fetch(`http://localhost:8001/jogadoraa/${nome}`, {
                method: "GET",
                headers: {
                    "Content-Type": "application/json",
                }
            })

            if (response.status === 404) {
                setError("Jogadora não encontrada.")
                window.alert("Jogadora não encontrada.")
                console.log(response)
                return
            }

            if (!response.ok) {
                throw new Error("Erro ao buscar os dados da jogadora.")
            }

            const d = await response.json()
            setDados(d)
            f(d);
            setNome("")
        } catch (erro) {
            console.error(erro)
            setError("Erro ao buscar os dados da jogadora.")
        }
    }

    return (
        <>
            <br />
            <form onSubmit={buscarJogadora}>
                <div className="columns is-centered">
                    <div className="column">
                        <input
                            className="input is-rounded is-hovered"
                            style={{ height: "50px" }}
                            type="text"
                            placeholder="Pesquise jogadora"
                            value={nome}
                            onChange={(e) => setNome(e.target.value)}
                        />
                    </div>
                    <button type="submit" className="button is-dark is-outlined is-rounded">Buscar</button>
                </div>
            </form>
        </>
    )
}

export default Pesquisa

