CREATE UNIQUE INDEX "ux_cliente_cpfcnpj"
ON "Cliente" ("cpfCnpjCliente");

CREATE UNIQUE INDEX "ux_veiculo_placa"
ON "Veiculo" ("placaVeiculo");

CREATE UNIQUE INDEX "ux_veiculo_chassi"
ON "Veiculo" ("chassiVeiculo");

CREATE UNIQUE INDEX "ux_mecanico_codigo"
ON "Mecanico" ("codigoMecanico");

CREATE UNIQUE INDEX "ux_ordemservico_numero"
ON "OrdemServico" ("numeroOrdemServico");

CREATE UNIQUE INDEX "ux_peca_codigo"
ON "Pecas" ("codigoPeca");

CREATE UNIQUE INDEX "ux_equipemecanico"
ON "EquipeMecanico" ("idEquipe", "idMecanico");

CREATE INDEX "ix_veiculo_idCliente"
ON "Veiculo" ("idCliente");

CREATE INDEX "ix_ordemservico_idCliente"
ON "OrdemServico" ("idCliente");

CREATE INDEX "ix_ordemservico_idVeiculo"
ON "OrdemServico" ("idVeiculo");

CREATE INDEX "ix_ordemservico_idEquipe"
ON "OrdemServico" ("idEquipe");

CREATE INDEX "ix_maoobra_idServico"
ON "MaoObra" ("idServico");

CREATE INDEX "ix_osservico_idOrdemServico"
ON "OrdemServicoServico" ("idOrdemServico");

CREATE INDEX "ix_ospeca_idOrdemServico"
ON "OrdemServicoPeca" ("idOrdemServico");