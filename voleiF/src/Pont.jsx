function Pont(props) {
    const f = props.fun
    let td = []
    function carrega() {
        const promises = []
        promises.push(
            fetch(`http://localhost:8001/times/${"Brasil"}`, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json',
                },
            }).then((resultado) => {
                if (!resultado.ok) {
                    throw new Error('Requisição com problema')
                }
                return resultado.json()
            })
        )

        promises.push(
            fetch(`http://localhost:8001/times/${"Italia"}`, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json',
                },
            }).then((resultado) => {
                if (!resultado.ok) {
                    throw new Error('Requisição com problema')
                }
                return resultado.json()
            })
        )

        promises.push(
            fetch(`http://localhost:8001/times/${"Turquia"}`, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json',
                },
            }).then((resultado) => {
                if (!resultado.ok) {
                    throw new Error('Requisição com problema')
                }
                return resultado.json()
            })
        )

        promises.push(
            fetch(`http://localhost:8001/sonhos`, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json',
                },
            }).then((resultado) => {
                if (!resultado.ok) {
                    throw new Error('Requisição com problema')
                }
                return resultado.json()
            })
        )

        Promise.all(promises)
            .then((resultados) => {
                resultados.forEach((dados) => {
                    td = td.concat(dados)
                })
                console.log(td)
                f(td)
            })
            .catch((erro) => {
                console.error('Erro na requisição:', erro);
            })
    }

    return (
        <>
            <form>
                <br />
                <input
                    className="button is-info is-dark is-outlined"
                    type="button"
                    value="Simulação de jogo"
                    onClick={carrega}
                />
            </form>
        </>
    )
}

export default Pont
