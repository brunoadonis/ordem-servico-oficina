ALTER TABLE "OrdemServico"
ADD CONSTRAINT "chk_os_autorizada"
CHECK ("autorizadaCliente" IN ('S', 'N'));

ALTER TABLE "OrdemServico"
ADD CONSTRAINT "chk_os_valor_total"
CHECK ("valorTotal" >= 0);

ALTER TABLE "Pecas"
ADD CONSTRAINT "chk_peca_valor_unitario"
CHECK ("valorUnitario" >= 0);

ALTER TABLE "Pecas"
ADD CONSTRAINT "chk_peca_quantidade_estoque"
CHECK ("quantidadeEstoque" >= 0);

ALTER TABLE "Pecas"
ADD CONSTRAINT "chk_peca_estoque_minimo"
CHECK ("estoqueMinimo" >= 0);

ALTER TABLE "MaoObra"
ADD CONSTRAINT "chk_maoobra_valor"
CHECK ("valorMaoObra" >= 0);

ALTER TABLE "Servicos"
ADD CONSTRAINT "chk_servico_tempo"
CHECK ("tempoEstimadoHoras" >= 0);

ALTER TABLE "OrdemServicoServico"
ADD CONSTRAINT "chk_osservico_quantidade"
CHECK ("quantidade" > 0);

ALTER TABLE "OrdemServicoServico"
ADD CONSTRAINT "chk_osservico_valor_unitario"
CHECK ("valorUnitarioMaoObra" >= 0);

ALTER TABLE "OrdemServicoServico"
ADD CONSTRAINT "chk_osservico_valor_total"
CHECK ("valorTotalServico" >= 0);

ALTER TABLE "OrdemServicoPeca"
ADD CONSTRAINT "chk_ospeca_quantidade"
CHECK ("quantidade" > 0);

ALTER TABLE "OrdemServicoPeca"
ADD CONSTRAINT "chk_ospeca_valor_unitario"
CHECK ("valorUnitarioPeca" >= 0);

ALTER TABLE "OrdemServicoPeca"
ADD CONSTRAINT "chk_ospeca_valor_total"
CHECK ("valorTotalPeca" >= 0);

ALTER TABLE "Veiculo"
ADD CONSTRAINT "chk_veiculo_quilometragem"
CHECK ("quilometragemAtual" >= 0);

ALTER TABLE "EquipeMecanico"
ADD CONSTRAINT "chk_equipe_mecanico_datas"
CHECK ("dataSaidaEquipe" IS NULL OR "dataSaidaEquipe" >= "dataEntradaEquipe");

ALTER TABLE "MaoObra"
ADD CONSTRAINT "chk_maoobra_datas"
CHECK ("dataFimVigencia" IS NULL OR "dataFimVigencia" >= "dataInicioVigencia");

ALTER TABLE "OrdemServico"
ADD CONSTRAINT "chk_os_datas"
CHECK ("dataConclusao" IS NULL OR "dataConclusao" >= "dataEmissao");