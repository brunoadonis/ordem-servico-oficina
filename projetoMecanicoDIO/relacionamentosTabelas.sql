ALTER TABLE "Veiculo"
ADD CONSTRAINT "Veiculo_fk1"
FOREIGN KEY ("idCliente")
REFERENCES "Cliente"("idCliente");

ALTER TABLE "EquipeMecanico"
ADD CONSTRAINT "EquipeMecanico_fk1"
FOREIGN KEY ("idEquipe")
REFERENCES "Equipe"("idEquipe");

ALTER TABLE "EquipeMecanico"
ADD CONSTRAINT "EquipeMecanico_fk2"
FOREIGN KEY ("idMecanico")
REFERENCES "Mecanico"("idMecanico");

ALTER TABLE "MaoObra"
ADD CONSTRAINT "MaoObra_fk1"
FOREIGN KEY ("idServico")
REFERENCES "Servicos"("idServico");

ALTER TABLE "OrdemServico"
ADD CONSTRAINT "OrdemServico_fk1"
FOREIGN KEY ("idCliente")
REFERENCES "Cliente"("idCliente");

ALTER TABLE "OrdemServico"
ADD CONSTRAINT "OrdemServico_fk2"
FOREIGN KEY ("idVeiculo")
REFERENCES "Veiculo"("idVeiculo");

ALTER TABLE "OrdemServico"
ADD CONSTRAINT "OrdemServico_fk3"
FOREIGN KEY ("idEquipe")
REFERENCES "Equipe"("idEquipe");

ALTER TABLE "AutorizacaoServico"
ADD CONSTRAINT "AutorizacaoServico_fk1"
FOREIGN KEY ("idOrdemServico")
REFERENCES "OrdemServico"("idOrdemServico");

ALTER TABLE "AutorizacaoServico"
ADD CONSTRAINT "AutorizacaoServico_fk2"
FOREIGN KEY ("idCliente")
REFERENCES "Cliente"("idCliente");

ALTER TABLE "OrdemServicoServico"
ADD CONSTRAINT "OrdemServicoServico_fk1"
FOREIGN KEY ("idOrdemServico")
REFERENCES "OrdemServico"("idOrdemServico");

ALTER TABLE "OrdemServicoServico"
ADD CONSTRAINT "OrdemServicoServico_fk2"
FOREIGN KEY ("idServico")
REFERENCES "Servicos"("idServico");

ALTER TABLE "OrdemServicoServico"
ADD CONSTRAINT "OrdemServicoServico_fk3"
FOREIGN KEY ("idTabelaMaoObra")
REFERENCES "MaoObra"("idTabelaMaoObra");

ALTER TABLE "OrdemServicoPeca"
ADD CONSTRAINT "OrdemServicoPeca_fk1"
FOREIGN KEY ("idOrdemServico")
REFERENCES "OrdemServico"("idOrdemServico");

ALTER TABLE "OrdemServicoPeca"
ADD CONSTRAINT "OrdemServicoPeca_fk2"
FOREIGN KEY ("idPeca")
REFERENCES "Pecas"("idPeca");