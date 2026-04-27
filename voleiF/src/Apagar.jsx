function Apagar(props) {
    let l = JSON.parse(props.dados)
    const f = props.fun
    console.log(l)
    let idj = Number(l[0])
    let tipo = String(l[1])
    let idt = Number(l[2])

    if (tipo == "Profissional") {
        console.log(l)
        let options = {
            method: "DELETE",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                idJ: idj,
                idT: idt
            })
        };
        fetch(`http://localhost:8001/JogTime`, options)
            .then((response) => {
                if (!response.ok) {
                    throw new Error("Erro ao excluir jogadora no time")
                }
                console.log(`Jogadora ${idj} deletada no time ${idt} com sucesso`)
                f()
            })
            .catch((error) => {
                console.log("Erro ao excluir jogadora:", error)
            });
    } else {
        let options = {
            method: "DELETE",
            headers: {
                "Content-Type": "application/json"
            }
        };
        fetch(`http://localhost:8001/jogadora/${idj}`, options)
            .then((response) => {
                if (!response.ok) {
                    throw new Error("Erro ao excluir jogadora");
                }
                console.log("Jogadora excluída com sucesso");
            })
            .then(() => {
                console.log("Jogadora excluída do time com sucesso")
                f()
            })
            .catch((error) => {
                console.log("Erro ao excluir jogadora:", error);
            });
    }
}

export default Apagar;

