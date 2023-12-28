import 'dart:math';

void main() {

  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  var relatorio = pacientes.map((paciente) => paciente.split('|'));

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  var pacientesMais20   = [];
  var proficaoPacientes = [];
  var spCount           = 0;

  relatorio.forEach((element) { 
    if(int.parse(element[1]) > 20)
    {
      pacientesMais20.add(element.first);
    }
    if(!proficaoPacientes.contains(element[2].toUpperCase())){
      proficaoPacientes.add(element[2].toUpperCase());
    }
    if(element.last.toUpperCase() == "SP"){
      spCount++;
    }
  });

  var resultadoProficao = [];

  for (var profissao in proficaoPacientes) {
    int count = 0;
    for (var i in relatorio) {
      if(i[2].toUpperCase() == profissao)
        count++;
    }
    resultadoProficao.add([profissao, count]);
  }

  print(pacientesMais20);
  print(spCount);
  print(resultadoProficao);

}