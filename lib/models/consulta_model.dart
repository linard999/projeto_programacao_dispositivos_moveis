class ConsultaModel {
  Classificacao? classificacao;
  Dotacao? dotacao;
  Execucao? execucao;

  ConsultaModel({this.classificacao, this.dotacao, this.execucao});

  ConsultaModel.fromJson(Map<String, dynamic> json) {
    classificacao = json['classificacao'] != null
        ? new Classificacao.fromJson(json['classificacao'])
        : null;
    dotacao =
        json['dotacao'] != null ? new Dotacao.fromJson(json['dotacao']) : null;
    execucao = json['execucao'] != null
        ? new Execucao.fromJson(json['execucao'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.classificacao != null) {
      data['classificacao'] = this.classificacao!.toJson();
    }
    if (this.dotacao != null) {
      data['dotacao'] = this.dotacao!.toJson();
    }
    if (this.execucao != null) {
      data['execucao'] = this.execucao!.toJson();
    }
    return data;
  }
}

class Classificacao {
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

  Classificacao(
      {this.unidadeOrcamentariaCodigo,
      this.unidadeOrcamentariaDescricao,
      this.funcaoESubFuncao,
      this.programatica,
      this.programaDescricao,
      this.acaoESubtitulo,
      this.esfera,
      this.fonteCodigo,
      this.fonteDescricao,
      this.gndCodigo});

  Classificacao.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class Dotacao {
  String? inicial;
  String? creditosAdicionaisAcrescimo;
  String? creditosAdicionaisDescrescimos;
  String? atualizada;
  String? contingenciado;
  String? movLiquidaCreditosProvisao;
  String? movLiquidaCreditosDestaque;
  String? liquida;

  Dotacao(
      {this.inicial,
      this.creditosAdicionaisAcrescimo,
      this.creditosAdicionaisDescrescimos,
      this.atualizada,
      this.contingenciado,
      this.movLiquidaCreditosProvisao,
      this.movLiquidaCreditosDestaque,
      this.liquida});

  Dotacao.fromJson(Map<String, dynamic> json) {
    inicial = json['inicial'];
    creditosAdicionaisAcrescimo = json['creditosAdicionaisAcrescimo'];
    creditosAdicionaisDescrescimos = json['creditosAdicionaisDescrescimos'];
    atualizada = json['atualizada'];
    contingenciado = json['contingenciado'];
    movLiquidaCreditosProvisao = json['movLiquidaCreditosProvisao'];
    movLiquidaCreditosDestaque = json['movLiquidaCreditosDestaque'];
    liquida = json['liquida'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['inicial'] = this.inicial;
    data['creditosAdicionaisAcrescimo'] = this.creditosAdicionaisAcrescimo;
    data['creditosAdicionaisDescrescimos'] =
        this.creditosAdicionaisDescrescimos;
    data['atualizada'] = this.atualizada;
    data['contingenciado'] = this.contingenciado;
    data['movLiquidaCreditosProvisao'] = this.movLiquidaCreditosProvisao;
    data['movLiquidaCreditosDestaque'] = this.movLiquidaCreditosDestaque;
    data['liquida'] = this.liquida;
    return data;
  }
}

class Execucao {
  String? empenhado;
  String? empenhadoPorcentagem;
  String? liquidado;
  String? liquidadoPorcentagem;
  String? pago;
  String? pagoPorcentagem;

  Execucao(
      {this.empenhado,
      this.empenhadoPorcentagem,
      this.liquidado,
      this.liquidadoPorcentagem,
      this.pago,
      this.pagoPorcentagem});

  Execucao.fromJson(Map<String, dynamic> json) {
    empenhado = json['empenhado'];
    empenhadoPorcentagem = json['empenhadoPorcentagem'];
    liquidado = json['liquidado'];
    liquidadoPorcentagem = json['liquidadoPorcentagem'];
    pago = json['pago'];
    pagoPorcentagem = json['pagoPorcentagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['empenhado'] = this.empenhado;
    data['empenhadoPorcentagem'] = this.empenhadoPorcentagem;
    data['liquidado'] = this.liquidado;
    data['liquidadoPorcentagem'] = this.liquidadoPorcentagem;
    data['pago'] = this.pago;
    data['pagoPorcentagem'] = this.pagoPorcentagem;
    return data;
  }
}