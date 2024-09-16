#include <iostream>
#include <string>

using namespace std;

class Pessoa {
protected:
    string nome;
    int idade;
    
public:
    Pessoa(string nome, int idade) : nome(nome), idade(idade) {}

    void imprimeNome() const {
        cout << "O nome é: " << nome << endl;
    }

    virtual void imprimeIdade() const {
        cout << "Idade não especificada para Pessoa." << endl;
    }
};

class Professor : public Pessoa {
public:
    Professor(string nome, int idade) : Pessoa(nome, idade) {}

    void imprimeIdade() const override {
        cout << "A idade do professor é: " << idade << " anos." << endl;
    }
};

class Aluno : public Pessoa {
private:
    string matricula;
    
public:
    Aluno(string nome, int idade, string matricula) : Pessoa(nome, idade), matricula(matricula) {}

    void imprimeIdade() const override {
        cout << "A idade do aluno é: " << idade << " anos." << endl;
    }

    void imprimeMatricula() const {
        cout << "A matrícula do aluno é: " << matricula << endl;
    }

int main() {
    Pessoa pessoa("João", 30);
    Professor professor("Maria", 45);
    Aluno aluno("Carlos", 20, "123456");

    cout << "Pessoa:" << endl;
    pessoa.imprimeNome();
    pessoa.imprimeIdade();
    cout << endl;

    cout << "Professor:" << endl;
    professor.imprimeNome();
    professor.imprimeIdade();
    cout << endl;

    cout << "Aluno:" << endl;
    aluno.imprimeNome();
    aluno.imprimeIdade();
    aluno.imprimeMatricula();
    cout << endl;

    return 0;
}
