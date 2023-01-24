
Funcionalidade: Validador de documentos

    Cenário: Validar documento tipo cpf
        Dado que eu tenha um documento do tipo cpf
        Quando eu validar o documento cpf
        Então o validador deve me retornar verdadeiro

    Cenário: Validar documento tipo cpf invalido
        Dado que eu tenha um documento do tipo cpf invalido
        Quando eu validar o documento cpf invalido
        Então o documento deve ser do tipo cpf inválido

    Cenário: Validar documento tipo cnpj
        Dado que eu tenha um documento do tipo cnpj
        Quando eu validar o documento cnpj
        Então o documento deve ser do tipo cnpj válido

    Cenário: Validar documento tipo cnpj invalido
        Dado que eu tenha um documento do tipo cnpj invalido
        Quando eu validar o documento cnpj invalido
        Então o validador deve me retornar falso