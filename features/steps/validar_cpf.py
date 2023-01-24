from behave import given, then, when


@given("que eu tenha um documento do tipo cpf")
def step_impl(context):
    context.documento = "00000000000"


@when("eu validar o documento cpf")
def step_impl(context):
    context.documento_valido = len(context.documento) == 11


@then("o validador deve me retornar verdadeiro")
def step_impl(context):
    assert context.documento_valido == True


@given("que eu tenha um documento do tipo cpf invalido")
def step_impl(context):
    context.documento = "000---000"


@when("eu validar o documento cpf invalido")
def step_impl(context):
    context.documento_valido = len(context.documento) == 12


@then("o documento deve ser do tipo cpf inválido")
def step_impl(context):
    assert context.documento_valido == False
