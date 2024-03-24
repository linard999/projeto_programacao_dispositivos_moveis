class ConsultaModel {
  String? mes;
  String? ano;
  List<Orcamentos>? orcamentos;

  ConsultaModel({this.mes, this.ano, this.orcamentos});

  ConsultaModel.fromJson(Map<String, dynamic> json) {
    mes = json['mes'];
    ano = json['ano'];
    if (json['orcamentos'] != null) {
      orcamentos = <Orcamentos>[];
      json['orcamentos'].forEach((v) {
        orcamentos!.add(new Orcamentos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mes'] = this.mes;
    data['ano'] = this.ano;
    if (this.orcamentos != null) {
      data['orcamentos'] = this.orcamentos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Orcamentos {
  String? unidadeOrcamentariaCodigo;
  String? unidadeOrcamentariaDescricao;
  String? funcaoESubFuncao;
  String? programatica;
  String? programaDescricao;
  String? acaoESubtitulo;
  String? esfera;
  String? fonteCodigo;
  String? fonteDescricao;
  String? gndCodigo;
  String? inicial;
  String? creditosAdicionaisAcrescimo;
  String? creditosAdicionaisDescrescimos;
  String? atualizada;
  String? contingenciado;
  String? movLiquidaCreditosProvisao;
  String? movLiquidaCreditosDestaque;
  String? liquida;
  String? empenhado;
  String? empenhadoPorcentagem;
  String? liquidado;
  String? liquidadoPorcentagem;
  String? pago;
  String? pagoPorcentagem;

  Orcamentos(
      {this.unidadeOrcamentariaCodigo,
      this.unidadeOrcamentariaDescricao,
      this.funcaoESubFuncao,
      this.programatica,
      this.programaDescricao,
      this.acaoESubtitulo,
      this.esfera,
      this.fonteCodigo,
      this.fonteDescricao,
      this.gndCodigo,
      this.inicial,
      this.creditosAdicionaisAcrescimo,
      this.creditosAdicionaisDescrescimos,
      this.atualizada,
      this.contingenciado,
      this.movLiquidaCreditosProvisao,
      this.movLiquidaCreditosDestaque,
      this.liquida,
      this.empenhado,
      this.empenhadoPorcentagem,
      this.liquidado,
      this.liquidadoPorcentagem,
      this.pago,
      this.pagoPorcentagem});

  Orcamentos.fromJson(Map<String, dynamic> json) {
    unidadeOrcamentariaCodigo = json['unidadeOrcamentariaCodigo'];
    unidadeOrcamentariaDescricao = json['unidadeOrcamentariaDescricao'];
    funcaoESubFuncao = json['funcaoESubFuncao'];
    programatica = json['programatica'];
    programaDescricao = json['programaDescricao'];
    acaoESubtitulo = json['acaoESubtitulo'];
    esfera = json['esfera'];
    fonteCodigo = json['fonteCodigo'];
    fonteDescricao = json['fonteDescricao'];
    gndCodigo = json['gndCodigo'];
    inicial = json['inicial'];
    creditosAdicionaisAcrescimo = json['creditosAdicionaisAcrescimo'];
    creditosAdicionaisDescrescimos = json['creditosAdicionaisDescrescimos'];
    atualizada = json['atualizada'];
    contingenciado = json['contingenciado'];
    movLiquidaCreditosProvisao = json['movLiquidaCreditosProvisao'];
    movLiquidaCreditosDestaque = json['movLiquidaCreditosDestaque'];
    liquida = json['liquida'];
    empenhado = json['empenhado'];
    empenhadoPorcentagem = json['empenhadoPorcentagem'];
    liquidado = json['liquidado'];
    liquidadoPorcentagem = json['liquidadoPorcentagem'];
    pago = json['pago'];
    pagoPorcentagem = json['pagoPorcentagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unidadeOrcamentariaCodigo'] = this.unidadeOrcamentariaCodigo;
    data['unidadeOrcamentariaDescricao'] = this.unidadeOrcamentariaDescricao;
    data['funcaoESubFuncao'] = this.funcaoESubFuncao;
    data['programatica'] = this.programatica;
    data['programaDescricao'] = this.programaDescricao;
    data['acaoESubtitulo'] = this.acaoESubtitulo;
    data['esfera'] = this.esfera;
    data['fonteCodigo'] = this.fonteCodigo;
    data['fonteDescricao'] = this.fonteDescricao;
    data['gndCodigo'] = this.gndCodigo;
    data['inicial'] = this.inicial;
    data['creditosAdicionaisAcrescimo'] = this.creditosAdicionaisAcrescimo;
    data['creditosAdicionaisDescrescimos'] =
        this.creditosAdicionaisDescrescimos;
    data['atualizada'] = this.atualizada;
    data['contingenciado'] = this.contingenciado;
    data['movLiquidaCreditosProvisao'] = this.movLiquidaCreditosProvisao;
    data['movLiquidaCreditosDestaque'] = this.movLiquidaCreditosDestaque;
    data['liquida'] = this.liquida;
    data['empenhado'] = this.empenhado;
    data['empenhadoPorcentagem'] = this.empenhadoPorcentagem;
    data['liquidado'] = this.liquidado;
    data['liquidadoPorcentagem'] = this.liquidadoPorcentagem;
    data['pago'] = this.pago;
    data['pagoPorcentagem'] = this.pagoPorcentagem;
    return data;
  }
}