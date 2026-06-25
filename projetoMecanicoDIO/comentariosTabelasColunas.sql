COMMENT ON TABLE "Cliente" IS 'Tabela responsável pelo cadastro dos clientes da oficina mecânica.';

COMMENT ON TABLE "Veiculo" IS 'Tabela responsável pelo cadastro dos veículos pertencentes aos clientes.';

COMMENT ON TABLE "Mecanico" IS 'Tabela responsável pelo cadastro dos mecânicos da oficina.';

COMMENT ON TABLE "Equipe" IS 'Tabela responsável pelo cadastro das equipes de mecânicos.';

COMMENT ON TABLE "EquipeMecanico" IS 'Tabela de junção que relaciona mecânicos às equipes.';

COMMENT ON TABLE "OrdemServico" IS 'Tabela principal do sistema, responsável pelo registro das ordens de serviço.';

COMMENT ON TABLE "Servicos" IS 'Tabela responsável pelo cadastro dos serviços executados pela oficina.';

COMMENT ON TABLE "Pecas" IS 'Tabela responsável pelo cadastro das peças utilizadas nos serviços.';

COMMENT ON TABLE "MaoObra" IS 'Tabela de referência de valores de mão de obra por serviço.';

COMMENT ON TABLE "AutorizacaoServico" IS 'Tabela responsável pelo registro da autorização do cliente para execução dos serviços.';

COMMENT ON TABLE "OrdemServicoServico" IS 'Tabela que relaciona os serviços executados em uma ordem de serviço.';

COMMENT ON TABLE "OrdemServicoPeca" IS 'Tabela que relaciona as peças utilizadas em uma ordem de serviço.';

COMMENT ON COLUMN "Cliente"."cpfCnpjCliente" IS 'Documento do cliente, podendo ser CPF ou CNPJ.';

COMMENT ON COLUMN "Veiculo"."idCliente" IS 'FK que identifica o cliente proprietário do veículo.';

COMMENT ON COLUMN "EquipeMecanico"."idEquipe" IS 'FK que identifica a equipe.';

COMMENT ON COLUMN "EquipeMecanico"."idMecanico" IS 'FK que identifica o mecânico vinculado à equipe.';

COMMENT ON COLUMN "OrdemServico"."numeroOrdemServico" IS 'Número de controle da ordem de serviço.';

COMMENT ON COLUMN "OrdemServico"."idCliente" IS 'FK que identifica o cliente responsável pela ordem de serviço.';

COMMENT ON COLUMN "OrdemServico"."idVeiculo" IS 'FK que identifica o veículo atendido na ordem de serviço.';

COMMENT ON COLUMN "OrdemServico"."idEquipe" IS 'FK que identifica a equipe responsável pela avaliação e execução dos serviços.';

COMMENT ON COLUMN "OrdemServico"."valorTotal" IS 'Valor total da OS, composto pela soma dos serviços e das peças.';

COMMENT ON COLUMN "OrdemServico"."statusOrdemServico" IS 'Status atual da ordem de serviço.';

COMMENT ON COLUMN "OrdemServico"."autorizadaCliente" IS 'Indica se o cliente autorizou a execução dos serviços. S para sim, N para não.';

COMMENT ON COLUMN "MaoObra"."idServico" IS 'FK que identifica o serviço relacionado ao valor de mão de obra.';

COMMENT ON COLUMN "OrdemServicoServico"."idOrdemServico" IS 'FK que identifica a ordem de serviço.';

COMMENT ON COLUMN "OrdemServicoServico"."idServico" IS 'FK que identifica o serviço executado.';

COMMENT ON COLUMN "OrdemServicoServico"."idTabelaMaoObra" IS 'FK opcional para a tabela de referência de mão de obra utilizada no cálculo.';

COMMENT ON COLUMN "OrdemServicoPeca"."idOrdemServico" IS 'FK que identifica a ordem de serviço.';

COMMENT ON COLUMN "OrdemServicoPeca"."idPeca" IS 'FK que identifica a peça utilizada na ordem de serviço.';