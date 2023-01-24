from behave import given, then, when


@given("que eu tenha um documento do tipo cnpj")
def step_impl(context):
    context.cnpj = "00000000000000"


@when("eu validar o documento cnpj")
def step_impl(context):
    context.documento_valido = len(context.cnpj) == 14


@then("o documento deve ser do tipo cnpj válido")
def step_impl(context):
    assert context.documento_valido == True


@given("que eu tenha um documento do tipo cnpj invalido")
def step_impl(context):
    context.cnpj = "000---000-invalido"


@when("eu validar o documento cnpj invalido")
def step_impl(context):
    context.documento_valido = len(context.cnpj) == 14


@then("o validador deve me retornar falso")
def step_impl(context):
    assert context.documento_valido == False
