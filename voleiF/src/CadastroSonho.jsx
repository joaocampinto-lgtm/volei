import { useState } from "react";

function CadastroSonho() {
    const [sonho, setSonho] = useState({
        nome: "",
        criador: "",
        nacionalidade: ""
    });

    function tratarAlteracao(e) {
        var campo = e.target.name;
        var valor = e.target.value;

        var novoSonho = {}
        for (var chave in sonho) {
            if (chave === campo) {
                novoSonho[chave] = valor
            } else {
                novoSonho[chave] = sonho[chave]
            }
        }

        setSonho(novoSonho);
    }

    function tratarSubmit(e) {
        e.preventDefault()

        var dados = {};
        for (var chave in sonho) {
            dados[chave] = sonho[chave]
        }

        var options = {
            method: "POST",
            body: JSON.stringify(dados),
            headers: {
                "Content-Type": "application/json"
            }
        }

        fetch(`http://localhost:8001/sonhos`, options)
            .then(function (response) {
                if (response.ok) {
                    setSonho({
                        nome: "",
                        criador: "",
                        nacionalidade: ""
                    });
                    return response.json();
                } else {
                    throw new Error("Erro ao cadastrar o sonho");
                }
            })
            .then(function () {
                setSonho({
                    nome: "",
                    criador: "",
                    nacionalidade: ""
                });
                reload()
            })
            .catch(function (error) {
                console.error("Ocorreu um erro ao cadastrar o sonho")
            });
    }

    function reload(){
        location.reload()
    }

    return (
        <>
            <div className="columns is-centered">
                <div className="column">
                    <form onSubmit={tratarSubmit} className="box">
                        <h3 className="title is-4">Cadastre seu time dos sonhos</h3>

                        <div className="field">
                            <label className="label" htmlFor="txtNome">Nome:</label>
                            <div className="control">
                                <input
                                    className="input"
                                    type="text"
                                    id="txtNome"
                                    name="nome"
                                    value={sonho.nome}
                                    onChange={tratarAlteracao}
                                    required
                                />
                            </div>
                        </div>

                        <div className="field">
                            <label className="label" htmlFor="txtCriador">Criador:</label>
                            <div className="control">
                                <input
                                    className="input"
                                    type="text"
                                    id="txtCriador"
                                    name="criador"
                                    value={sonho.criador}
                                    onChange={tratarAlteracao}
                                    required
                                />
                            </div>
                        </div>

                        <div className="field">
                            <label className="label" htmlFor="txtNacionalidade">Nacionalidade:</label>
                            <div className="control">
                                <input
                                    className="input"
                                    type="text"
                                    id="txtNacionalidade"
                                    name="nacionalidade"
                                    value={sonho.nacionalidade}
                                    onChange={tratarAlteracao}
                                    required
                                />
                            </div>
                        </div>

                        <div className="field">
                            <div className="control">
                                <input className="button is-primary" type="submit" value="Cadastrar" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </>
    )
}

export default CadastroSonho;
