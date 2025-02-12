-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 09:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21352215_gestaosaude`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda-clinicas`
--

CREATE TABLE `agenda-clinicas` (
  `id_agendamento` bigint(20) NOT NULL,
  `agendado_por` varchar(11) NOT NULL,
  `cpf_paciente` varchar(50) NOT NULL,
  `data_agendamento` date NOT NULL,
  `horario_agendamento` varchar(2) NOT NULL,
  `minuto_agendamento` varchar(2) NOT NULL,
  `atividade_curricular` varchar(40) NOT NULL,
  `local` varchar(25) NOT NULL,
  `descricao` varchar(25) NOT NULL,
  `status_agendamento` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `agenda-clinicas`
--

INSERT INTO `agenda-clinicas` (`id_agendamento`, `agendado_por`, `cpf_paciente`, `data_agendamento`, `horario_agendamento`, `minuto_agendamento`, `atividade_curricular`, `local`, `descricao`, `status_agendamento`) VALUES
(1, '2010123', '111222333', '2023-11-09', '09', '00', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(2, 'Responsavel', '999.888.777-66', '2023-11-09', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'No local'),
(3, '2010123', '112.289.390-63', '2023-10-26', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Faltou'),
(4, '14200737', '999.888.777-66', '2023-11-23', '15', '15', 'RADIOLOGIA E IMAGINOLOGIA', 'Radiologia', 'Primeira consulta', 'Agendado'),
(5, '2014321', '789987654', '2016-10-23', '09', '30', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(6, '2014321', '654123789', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(7, '2014321', '321456789', '2020-10-23', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Agendado'),
(8, '2014321', '789987654', '2016-10-23', '15', '00', 'RADIOLOGIA E IMAGINOLOGIA', 'Radiologia', 'Primeira consulta', 'Agendado'),
(9, '2014321', '654123789', '2017-10-23', '18', '30', 'CETAT', 'Bloco - 3o Andar', 'Primeira consulta', 'Atendido'),
(10, '2011456', '321456789', '2016-10-23', '09', '00', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'No local'),
(11, '2011456', '789987654', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(12, '2011456', '654123789', '2020-10-23', '08', '30', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Agendado'),
(13, '2012789', '321456789', '2023-10-10', '09', '45', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(14, '2012789', '789987654', '2018-10-23', '14', '0', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(15, '2012789', '654123789', '2020-10-23', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Agendado'),
(16, '2010125', '789987654', '2016-10-23', '09', '00', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(17, '2013654', '654123789', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(18, '2013654', '321456789', '2020-10-23', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Agendado'),
(19, '2010125', '999.888.777-66', '2020-09-09', '08', '15', '55555', 'Clínica Sul - 1º Andar', '4444', 'Faltou'),
(20, '2010123', '123456', '2023-11-11', '14', '00', 'disciplina', 'Clínica Sul - 1º Andar', 'aaaaa', 'Agendado'),
(21, 'Responsavel', '790.588.720-09', '2023-11-13', '14', '00', 'disciplina', 'Clínica Sul - 1º Andar', 'aaaaa', 'No local'),
(64, '14200737', '790.588.720-09', '2023-11-16', '08', '00', 'PERIODONTIA CLÍNICA', 'Clínica Sul - 1º Andar', 'Descrição de atendimento', 'Agendado'),
(65, 'Responsavel', '999.888.777-33', '2023-11-18', '10', '20', 'Implanto', 'Escolher', 'Teste responsável', 'Agendado');

-- --------------------------------------------------------

--
-- Table structure for table `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `especial` varchar(255) NOT NULL,
  `situação` varchar(255) NOT NULL,
  `vacina` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alunos`
--

INSERT INTO `alunos` (`id`, `matricula`, `nome`, `curso`, `especial`, `situação`, `vacina`) VALUES
(107071, '14200737', 'RUBENS TADEU MARTINS JUNIOR', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(109457, '15100197', 'MARIANE DIAS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(111468, '15102080', 'IZABEL GONCALVES DE SOUZA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(117444, '15200280', 'BERNARDO FERREIRA MENDONÇA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(118941, '15201769', 'LÉA CRISTINA CHAVES RIBEIRO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(126027, '16200568', 'ANGELO CARARO ZANINI', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(126415, '16200953', 'JESSICA DA SILVA RODRIGUES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(126681, '16201165', 'GUILHERME RÖDEL SILVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(127157, '16201301', 'LEONARDO COSTA E SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(132789, '17103708', 'ANA PAULA SANTANA GARCIA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(136137, '17200428', 'ENZO LIGORIO CARPENEDO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(136507, '17200781', 'JANAINA DA SILVA SILVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(137121, '17201346', 'HENRIQUE DA SILVA RODRIGUES LOURENCON', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(139778, '18101209', 'MANOEL BOIJINK SOARES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(139931, '17202738', 'ANGEL VITORIA DE AVILA TEIXEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(141277, '18102598', 'LIVIA SILVEIRA BARCELLOS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(141870, '18103171', 'THAIS MOREIRA MULLET', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(142191, '18103467', 'JANUARIO TEIXEIRA DA SILVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(143700, '18104926', 'ANDRESSA RODRIGUES MACHADO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(143963, '18200101', 'BRENDA MADRUGA AMARAL', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(143990, '18200128', 'GIULIANA MARIA RIBEIRO DA SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(145045, '18201145', 'THAIS PEDROSO SOARES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(145661, '18201741', 'FERNANDA PEDROZO DAS NEVES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(145975, '18202052', 'BRUNO FERREIRA DOS SANTOS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(145978, '18202055', 'CHARLES CUNHA DO ESPIRITO SANTO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146205, '18202280', 'NICOLAS CAMPOS RODEGHIERO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146717, '19100431', 'MARINA INES ROMANO SANTIN', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146749, '19100463', 'LUIS HENRIQUE BAPTISTA REHBEIN', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146760, '19100474', 'GABRIEL DA SILVA SOPENA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146761, '19100475', 'VICTOR CARVALHO MORAES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146762, '19100476', 'KELEM SOARES KONFLANZ', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146807, '19100521', 'MARIA EDUARDA PERES SCHMALFUSS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146812, '19100526', 'ANDERSON ROTUNDO PEREZ', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146831, '19100545', 'BRUNA ZEMBRUSKI GOMES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(148025, '19101706', 'FELIPE AUGUSTO KRAVCHENKO CARDOSO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(148596, '19102268', 'ARTHUR PRETTO MALDANER', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(148609, '19102280', 'MARIA EDUARDA DALMEIDA PAES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(148985, '19102617', 'MARIA EDUARDA ARMINDO DE SOUZA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149257, '19102880', 'VICTORIA KETLEN MOREIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149416, '19103039', 'RAFAEL MARTINS DOS SANTOS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149427, '19103050', 'JULIA PEREIRA DA COSTA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149431, '19103054', 'FELIPE BERWALDT ISLABAO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149432, '19103055', 'KAIENA PALOMA SCHIERHOLT', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149444, '19103067', 'KAROLINA REIS DA ROSA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149543, '19103166', 'MARINA NUNES DE FARIA CORREA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149565, '19103188', 'LARISSA WULFF OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149796, '19103404', 'RENATA LUISA SEYFFERT CRUGER', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149799, '19103407', 'PATRICK ARINOS DIAS FARIAS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149818, '19103423', 'THALIA ROSA DO NASCIMENTO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149937, '19103533', 'NATALIA BLANK PINZ', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(150175, '19103739', 'JESIELE CONCEICAO CORREA AZZOLIN', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(150181, '19103744', 'WILLIAM TERRA NEVES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(150792, '19104346', 'BRUNO MARTINS DA SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151260, '19104799', 'CASSIANE SOUZA FOLY DO NASCIMENTO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151644, '19105179', 'FELIPE DOS SANTOS COSTA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151864, '19200157', 'JADE HONNICKE DUARTE', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151879, '19200172', 'JANE BEATRIZ MENDES OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151884, '19200177', 'JULIA BICCA NOGUEZ MARTINS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151905, '19200198', 'JULY IASMIM DA SILVA BARBOSA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152222, '19200513', 'EDUARDA DAMASCENO ESCALANTE', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152334, '19200625', 'JULIANA DOSSO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152381, '19200672', 'DYULIA GAUTERIO DE LEMOS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152497, '19200784', 'JOSIANE DIAS PINZ', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152514, '19200801', 'FRANCIELLI FERNANDEZ GARCIA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152579, '19200866', 'JORDANA DE PAULA DA SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152585, '19200872', 'PAOLA PEREIRA REIZNAUTT', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152722, '19201007', 'DIANE PEREIRA ROSA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153128, '19201409', 'JULIA BORTOWSKI DE MEDEIROS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153132, '19201412', 'VINICIUS COLOMBY RUIZ', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153147, '19201427', 'FRANCIELEN BRAGA TEIXEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153600, '19201877', 'MICHELE NEUMANN', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153798, '19202075', 'RAFAELA DIAS COUTINHO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154448, '20100574', 'LUIZA HIARA DE MORAES KOLTON', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154475, '20100601', 'ANA CAROLINA DA SILVA SOUZA', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(154503, '20100629', 'RENATO OLIVEIRA SALDANHA DE ARAUJO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154522, '20100648', 'NATALI PEREIRA CASSAIS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154602, '20100728', 'JULIA DA SILVEIRA LIMA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154631, '20100757', 'ANTHONY MARCOWICH ROCHA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155068, '20101175', 'MAIARA OLIVEIRA ORTIZ CORREA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155425, '20101522', 'FERNANDA TUERLINCKX DA SILVA BRUNO CORREA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155532, '20101628', 'MARIA EDUARDA BARBIERI AZAMBUJA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155589, '20101684', 'EDUARDO MAGALHAES DIAS GUIDO BERNARDES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155916, '20102005', 'CRISTIANE BERWALDT GOWERT', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156875, '20102917', 'GUSTAVO SILVA FRANCISCO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156904, '20102946', 'NATHALIA LEONARSKI CARVALHO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156917, '20102959', 'LAIZA SALAZAR WINK', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156931, '20102973', 'VITORIA DA CRUZ SILVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156959, '20103001', 'LUIZA GIODA NORONHA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156967, '20103009', 'BARBARA MARTINS FARINHA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157037, '20103079', 'ALICE E SOUZA HENRIQUES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157089, '20103131', 'ROBSON RODRIGUES DA SILVA JUNIOR', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157559, '20103546', 'JULIANA THUROW KRUGER', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157588, '20103575', 'JULIANA FLORES MANKE', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157599, '20103586', 'JANDRYCE SILVEIRA DE SOUZA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157603, '20103590', 'ANA CAROLINA MINHO DE SOUZA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157656, '20103643', 'DIULLIA SORIA CAUMO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157701, '20103687', 'Diogo Póky Jacinto', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(158613, '20104580', 'Stella Parada Santos Gallo Corrêa', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(158797, '20104756', 'LAIRA FEIJÓ RODRIGUES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(158812, '20104770', 'OTAVIO ISMAR DIAS CAMPOS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159541, '20200511', 'ALDERLAN FRANCISCO FERREIRA DOS SANTOS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159542, '20200512', 'BRENO LOPES NUNES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159543, '20200513', 'PEDRO DENTICE DA SILVA LEITE', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159544, '20200514', 'RAFAELA CORREA MARTINS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159617, '20200587', 'NATHALIA PEREIRA DA SILVA PORTO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159744, '20200709', 'KAMILA PAGEL RAMSON', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160075, '20201038', 'JULIA SILVEIRA LONGARAY', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160084, '20201047', 'HELLEN MONIQUE DA MOTTA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160116, '20201079', 'ANA JULIA TAVARES CORREA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160117, '20201080', 'DAIANE SILVA SANTOS DA CRUZ', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160128, '20201089', 'CRISTINA HELENA MORELLO SARTORI', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160146, '20201106', 'DAIANI CORREA GONCALVES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160225, '20201171', 'LARA EMMILE EVANGELISTA VALENÇA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160245, '20201190', 'RAPHAELA PORCIUNCULA DAS NEVES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160327, '20105018', 'KAREN MULLER BUBOLZ', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160749, '20105153', 'LUIZ CARLOS SPECHET PRADO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160920, '20105241', 'EDUARDA TREPTOW GOUVEA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161691, '20201954', 'GABRIELLE FERREIRA CARDOSO', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(161692, '20201955', 'GIAN CARDOSO SAMPAIO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161693, '20201956', 'KAILA ANDRESSA DOS SANTOS OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161694, '20201957', 'RAFAELA CHAVES CORREA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161696, '20201959', 'TAYSSA DE VASCONCELOS PEREIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161725, '20201988', 'JOAO LUIZ DALMASO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161762, '20202025', 'JULIANA LIMA DO AMARAL', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161783, '20202045', 'ALLAN MARTINS MULLER', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161822, '20202078', 'BETINA DUTRA LIMA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161836, '20202091', 'EZEQUIEL AZEVEDO SCHEMMFELNNIG', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(169437, '21201051', 'IURI HORNKE TUCHTENHAGEN', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(169664, '21201272', 'LETICIA NUNES FRANCO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(169874, '21201479', 'ALYANDRA BUCHWEITZ MORALES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(169879, '21201484', 'PIETRA SILVA DA ROSA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(170327, '21201915', 'CANDIDO FELIPE MENDONCA FERNANDES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(170391, '21201956', 'Patrick Ferreira chagas', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(170920, '22100335', 'GUILHERME BRITO QUEIROZ DA SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172296, '22101638', 'JESSICA DE VARGAS BOSENBECKER', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172551, '22101884', 'ANDERSON DE OLIVEIRA FICKEL', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172813, '21202179', 'LETICIA DA SILVA RIOS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172973, '21202295', 'OTAVIO BORGES MADRUGA DE LIMA ', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172974, '21202296', 'Cauane Aires de Souza', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172980, '21202302', 'RAYANE DOS SANTOS CARDOSO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173245, '22102357', 'LORENZO ESCARRONE DE LIMA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173248, '22102360', 'LUIZ EDUARDO HANSEN DA SILVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173252, '22102364', 'VICTORIA JULIAN FERREIRA LIMA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173576, '22102674', 'PEDRO SÁ DA SILVA SILVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173695, '22102767', 'SAMARY DA SILVA GASSEN', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173697, '22102769', 'VITOR GABRIEL DA SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173864, '22102910', 'NATHALIA MACHADO LINS BRUM', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173992, '22102994', 'GUILHERME TEIXEIRA DA SILVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174031, '22103029', 'ANA MARIA DE OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174124, '22103109', 'ISABELLE LOPES BERMUDES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174125, '22103110', 'JORDANA DOS SANTOS DUARTE', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174127, '22103112', 'YASMIN PENELUC ROCHA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174286, '22103256', 'PEDRO AFONSO MACHADO NUNES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174391, '22103330', 'ELIAS JOAQUIM VÖLZ BARBOSA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174558, '22103479', 'ESTHER BATISTA DE MELO ALMEIDA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174560, '22103481', 'NATALIA COLLARES EBERT HAMM', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174567, '22103488', 'IZADORA WRUCH CARDOSO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174570, '22103491', 'JASMINY AGUIRRE XAVIER', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(175021, '22200101', 'MILEICA CRISTIANE BOBSIN DA SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(175831, '22104239', 'LUCAS SPECHET COLARES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(176137, '22104354', 'LAURA AZAMBUJA FERNANDES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(176299, '22104430', 'WESLEY SILVA DA SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(176315, '22104445', 'CAROLINE MENDES GARCIAS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(176316, '22104446', 'KAUANNA DIAS PENNY', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177745, '22202162', 'JHENIFFER GONCALVES DE OLIVEIRA', '1100 - Nutrição', 'Sim', 'Cursando', 'Homologada'),
(177767, '22202184', 'VINICIUS ALVES ALMEIDA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177769, '22202186', 'EMELY REGINA FILA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177784, '22202201', 'MANUELA DE AZEVEDO ALDRIGUI', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177787, '22202204', 'CAMILLY DA SILVA ZAIONS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177788, '22202205', 'JOSE CLAUDEAN DOS SANTOS TELES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177795, '22202212', 'ALICE CALDEIRA FRANCIONI LANG', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177796, '22202213', 'ALINE NACHTIGALL MILBRATH', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177802, '22202219', 'FREDERICO PEREIRA CASTILHO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177804, '22202221', 'ALINE DE FARIAS MILECH', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177806, '22202223', 'CAMILA OLIVEIRA DE OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177808, '22202225', 'BRUNA RAMOS MACHADO DOS SANTOS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177810, '22202227', 'JULLIA MELO DE MENEZES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177813, '22202230', 'HELENA CAETANO MORALE DE OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177815, '22202232', 'ISABELLY SANTOS LIMA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177817, '22202234', 'MARIA EDUARDA INDA GOMES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177820, '22202237', 'JULIANA LUONGO PELUFO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177872, '22202289', 'CARLA JULIANE VEGNER', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178095, '22202505', 'VITORIA ZIMMER LINCK', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178236, '22202624', 'LUISA ROLOFF CONCEICAO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178239, '22202627', 'LAURA SCHEIDEMANTEL GARCIA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178274, '22202662', 'BARBARA CANUTO SAMPAIO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178291, '22202679', 'CAMILA SANTIN DA SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178339, '22202724', 'HELENA HERNANDES MATHEUS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178342, '22202727', 'Tatiana Serutina Lopes da Silva', '400 - Odontologia', 'Sim', 'Cursando', 'Homologada'),
(178345, '22202730', 'Veronica Salvador ', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179017, '22203338', 'LAURA SENNA DIAS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179044, '22203364', 'ANA CLARA FAZENDA ARAUJO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179045, '22203365', 'EDUARDA RIBEIRO FONSECA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179049, '22203369', 'CAROLINA RODRIGUEZ GARRALAGA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179050, '22203370', 'LAHY TOILLIER DE QUADROS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179454, '23100308', 'GABRIELA DE AVILA COSTA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179546, '23100395', 'ISABELLE PENELUC ROCHA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179547, '23100396', 'JULIA MARRONI DA ROSA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179713, '23100554', 'MARCELLA GONCALVES BORBA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179719, '23100560', 'MARIA LUISA SILVA VIEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(179723, '23100564', 'RAFAELA NUNES RUSSO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(180223, '23100994', 'JADER LUIZ PETTER TESSMER FILHO', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(180228, '23100999', 'MARIANA AMARAL DO AMARAL', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(180232, '23101003', 'OCTAVIO MONTEIRO PRIOTTO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(181055, '23101797', 'LEONARDO AUGUSTO PEREIRA DAS DORES', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(181064, '23101806', 'ANA LAURA MENDES BRUSAMARELLO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(181067, '23101809', 'MATHEUS CAVALCANTE DOS SANTOS', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(181320, '23102051', 'MARCELO MIRANDA FERREIRA JUNIOR', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(181508, '23102236', 'LUCAS GEHRKE ALVES', '400 - Odontologia', 'Sim', 'Cursando', ' '),
(182292, '23102999', 'RYAN DIAS CANILHA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182551, '23103242', 'SOPHYA HARTER SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182559, '23103250', 'THAYANNE BRITO ARAUJO', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(182562, '23103253', 'GABRIELE DIAS MENEZES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182572, '23103263', 'GABRIEL MASAMI BERNARDES UTIYAMA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(182574, '23103265', 'MARCIELE DAMACENA RODRIGUES', '400 - Odontologia', 'Não', 'Cursando', ' '),
(182577, '23103268', 'ANDREI COELHO FETTER', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182578, '23103269', 'EDUARDA RITTES PEREIRA', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(182579, '23103270', 'LUIZA DE MELLO NIZOLI', '400 - Odontologia', 'Não', 'Cursando', ' '),
(182580, '23103271', 'LUANA PERGHER BOTTEGA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182581, '23103272', 'ESTELA DE SOUZA WALTZER', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182582, '23103273', 'LUANA CRISTINA BRASSOLOTO', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182584, '23103275', 'LUISA LINK BIANCHI', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182585, '23103276', 'LAURA BANDIERA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182586, '23103277', 'DIOVANA FONSECA FERREIRA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(182587, '23103278', 'NATALIA LINK BAHR', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182662, '23103329', 'STEFANY RIBEIRO ROCHA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(182904, '23103524', 'JOAO PEDRO PORCIUNCULA OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(183186, '23103803', 'LARISSA MESQUITA DE ALMEIDA', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(183203, '23103818', 'LAURA LEAL LISBOA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(183932, '23104529', 'JULIA AMONTE ROTA PEREIRA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(183933, '23104530', 'LUCAS SARAIVA MASCARENHAS', '400 - Odontologia', 'Não', 'Cursando', ' '),
(184054, '23104647', 'FELIPE DE OLIVEIRA CREMA', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(184263, '23104842', 'Maria Loandra Azevedo de Oliveira', '400 - Odontologia', 'Não', 'Cursando', ' '),
(184427, '23105003', 'PAMELA REGINA XAVIER HERNANDORENA GARCIA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(184500, '23105076', 'EDUARDO DA SILVA MARCELLO', '400 - Odontologia', 'Não', 'Cursando', ' '),
(184568, '23105144', 'GUILHERME PEREIRA OSSANES', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(184569, '23105145', 'IAN REINHARDT MORAN', '400 - Odontologia', 'Não', 'Cursando', ' '),
(184570, '23105146', 'ALEXANDRE SANTOS DE OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(184650, '23200076', 'CAMILA ERNA ZANELA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(184652, '23200078', 'EMANUELLE DE BRITO VERCELINO', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185001, '23200423', 'Tainá Belarmino', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185002, '23200424', 'RHAYANY FERREIRA SANES', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185003, '23200425', 'ESTHER SOARES GOMES', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(185004, '23200426', 'FABIANA COPPE', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(185006, '23200428', 'MARIA SOFHIA COSTA DE OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185007, '23200429', 'ADRIAN RIBEIRO MARQUES', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185009, '23200431', 'LUCAS DE CRISTO VIANA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(185012, '23200434', 'CLARICE SCHWAMBACH BARCELOS', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185013, '23200435', 'MANUELA DE MELLO GARRE', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(185014, '23200436', 'INGRID MORENO DA SILVA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(185015, '23200437', 'IGOR FERREIRA NUNES', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185016, '23200438', 'DAIANE JACOBSEN RACKOW', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(185017, '23200439', 'GUILHERME DE OLIVEIRA CREMA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185019, '23200441', 'MARIA LUIZA DOS SANTOS LIMA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185020, '23200442', 'LUIS GUSTAVO ULGUIM TAVARES', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(185021, '23200443', 'IKARO MACIEL CARRETTS', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(185022, '23200444', 'HERLYTA DAIARA MARQUES DOS SANTOS', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185024, '23200446', 'JULIANA JESKE LEITZKE', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185025, '23200447', 'RAPHAEL IANAGONI NUNES', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185026, '23200448', 'KAILANY MIKAELA DE OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185027, '23200449', 'JOAO GABRIEL MUNHOZ PEREIRA', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(185029, '23200451', 'EDUARDA CAVALHEIRO DA SILVA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185030, '23200452', 'GIOVANNA OLIVEIRA DE MATTOS LEON', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(185031, '23200453', 'ANA CAROLINA HEUSNER', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185032, '23200454', 'RAFAELA GONCALVES TORRES', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185034, '23200456', 'CAMILA ROVADOSCKI ZAT', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185036, '23200458', 'VITOR JAKUBOWSKI ZORATTO', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185037, '23200459', 'MATHEUS BARRETO MULLER', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185038, '23200460', 'ANA CAROLINA ROSA FERREIRA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185768, '23201139', 'CAROLINE DUARTE DUARTE', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185769, '23201140', 'INARA CECILIANO CAVALHEIRO', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185820, '23201187', 'LEONARDO SOUZA PERCHIN', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185907, '23201269', 'MARIA EDUARDA HERNANDES GARCIA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(185908, '23201270', 'ISABELLA RIBEIRO PRESSA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(186114, '23201465', 'LETICIA ESTOL DIAS DE OLIVEIRA', '400 - Odontologia', 'Não', 'Cursando', ' '),
(186137, '23201488', 'NICOLY SOUZA RAMOS', '400 - Odontologia', 'Não', 'Cursando', ' '),
(186138, '23201489', 'VANESSA SCHILLER DRAWANZ', '400 - Odontologia', 'Não', 'Cursando', ' '),
(186139, '23201490', 'YASMIN PAULA DOS SANTOS', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(186140, '23201491', 'YASMIN RODRIGUES DE AGUIAR', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(186157, '23201508', 'JULIA SILVA GOEBEL', '400 - Odontologia', 'Não', 'Cursando', ' '),
(186691, '23202038', 'TALISON COSTA DA SILVA', '400 - Odontologia', 'Não', 'Cursando', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Data` date NOT NULL,
  `Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arquivos`
--

INSERT INTO `arquivos` (`id`, `CPF`, `Descricao`, `Tipo`, `Data`, `Link`) VALUES
(8, '555.666.777-88', 'panorâmica', 'Radiografia ', '2023-11-13', 'uploads/555.666.777-88/652ad9f85d9d2_panoramica-1643135898.jpg'),
(16, '555.666.777-88', 'qwertyu', 'Radiografia periapical', '2023-11-06', 'uploads/555.666.777-88/652ecd2a5e3f8_a.html'),
(18, '999.888.777-66', 'qwerty', 'Radiografia periapical', '2023-11-03', 'uploads/555.666.777-88/652ecf987bf33_a.html');

-- --------------------------------------------------------

--
-- Table structure for table `avaliacoesatendimento`
--

CREATE TABLE `avaliacoesatendimento` (
  `id_avaliacao` bigint(20) NOT NULL,
  `data_avaliacao` date NOT NULL,
  `matricula` varchar(55) NOT NULL,
  `id_responsavel` varchar(20) NOT NULL,
  `responsavel` varchar(40) NOT NULL,
  `cod_disciplina` varchar(20) NOT NULL,
  `disciplina` varchar(30) NOT NULL,
  `periodo` varchar(6) NOT NULL,
  `pontualidade` varchar(15) NOT NULL,
  `comportamento` varchar(15) NOT NULL,
  `materiais` varchar(15) NOT NULL,
  `conhecimento` varchar(15) NOT NULL,
  `cuidado` varchar(15) NOT NULL,
  `adversidades` varchar(15) NOT NULL,
  `dupla` varchar(15) NOT NULL,
  `autoavaliacao` varchar(15) NOT NULL,
  `obs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avaliacoesatendimento`
--

INSERT INTO `avaliacoesatendimento` (`id_avaliacao`, `data_avaliacao`, `matricula`, `id_responsavel`, `responsavel`, `cod_disciplina`, `disciplina`, `periodo`, `pontualidade`, `comportamento`, `materiais`, `conhecimento`, `cuidado`, `adversidades`, `dupla`, `autoavaliacao`, `obs`) VALUES
(1, '2023-04-03', '2010123', '', 'Ciclano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Satisfatório', 'Bom', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Bom', ''),
(2, '2003-03-23', '2011456', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(3, '2003-03-23', '2012789', '', 'Ciclano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Insatisfatório', 'Insatisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(4, '2004-04-23', '2012789', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/2', 'Bom', 'Satisfatório', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(5, '2004-04-23', '2010123', '', 'Ciclano', '3470016', 'PERIODONTIA CLÍNICA', '2023/2', 'Bom', 'Satisfatório', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(6, '2004-04-23', '2011456', '', 'Ciclano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Insatisfatório', 'Bom', 'Muito Bom', 'Muito Bom', 'Muito Bom', 'Muito Bom', 'Satisfatório', 'Muito Bom', 'Aluno chegou atrasado'),
(7, '2004-04-23', '2010123', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Bom', 'Satisfatório', 'Bom', 'Parcialmente', 'Bom', 'Parcialmente', 'Satisfatório', 'Bom', ''),
(8, '2004-04-23', '2013654', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Bom', 'Muito Bom', 'Satisfatório', 'Parcialmente', 'Satisfatório', 'Parcialmente', 'Satisfatório', 'Bom', ''),
(9, '2004-10-23', '2012789', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Bom', 'Muito Bom', 'Bom', 'Parcialmente', 'Bom', 'Parcialmente', 'Satisfatório', 'Bom', ''),
(10, '2004-10-23', '2014321', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Satisfatório', 'Muito Bom', 'Bom', 'Bom', 'Parcialmente', 'Satisfatório', 'Satisfatório', 'Bom', ''),
(11, '2004-10-23', '2010123', '', 'Fulano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/2', 'Satisfatório', 'Muito Bom', 'Bom', 'Parcialmente', 'Parcialmente', 'Satisfatório', 'Satisfatório', 'Bom', ''),
(12, '2004-10-23', '2010123', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Satisfatório', 'Parcialmente', 'Bom', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Muito Bom', ''),
(13, '2004-11-23', '2014321', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Parcialmente', 'Bom', 'Bom', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Muito Bom', ''),
(14, '2004-11-23', '2014321', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Bom', 'Parcialmente', 'Bom', 'Bom', 'Bom', 'Parcialmente', 'Bom', 'Muito Bom', ''),
(15, '2004-11-23', '2013654', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Bom', 'Satisfatório', 'Parcialmente', 'Parcialmente', 'Bom', 'Satisfatório', 'Bom', 'Muito Bom', ''),
(16, '2004-11-23', '2011456', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Insatisfatório', 'Satisfatório', 'Insatisfatório', 'Parcialmente', 'Bom', 'Satisfatório', 'Bom', 'Insatisfatório', 'Aluno não tem comportamento compatível com o ambiente'),
(17, '2004-11-23', '2013654', '', 'Fulano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Bom', 'Satisfatório', 'Parcialmente', 'Parcialmente', 'Satisfatório', 'Parcialmente', 'Bom', 'Muito Bom', ''),
(18, '2004-11-23', '2012789', '', 'Fulano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Bom', 'Parcialmente', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', 'Bom', 'Muito Bom', ''),
(19, '2004-11-23', '2013654', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Bom', 'Muito Bom', ''),
(20, '2004-11-23', '2013654', '', 'Fulano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Bom', 'Bom', ''),
(26, '2023-11-14', '14200737', 'Carlos Santana', 'Carlos Santana', '03480007', 'UNIDADE CLÍNICA ODONTOLÓGICA I', '2023/2', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', '');

-- --------------------------------------------------------

--
-- Table structure for table `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `cod_atividade` varchar(255) NOT NULL,
  `atividade` varchar(255) NOT NULL,
  `cod_turma` varchar(255) NOT NULL,
  `matriculas_vagas` varchar(255) NOT NULL,
  `nr_matricula_especial` varchar(255) NOT NULL,
  `nr_total_matricula` varchar(255) NOT NULL,
  `nr_total_vagas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `cod_atividade`, `atividade`, `cod_turma`, `matriculas_vagas`, `nr_matricula_especial`, `nr_total_matricula`, `nr_total_vagas`) VALUES
(307682, '12000473', 'BIOQUÍMICA', 'M1', '400 - Odontologia (24 / 25)', '0', '24', '25'),
(307684, '12000473', 'BIOQUÍMICA', 'M2', '400 - Odontologia (21 / 25)', '0', '21', '25'),
(307687, '09040011', 'ANATOMIA HUMANA GERAL', 'M1', '400 - Odontologia (25 / 26)', '0', '25', '26'),
(307689, '09040011', 'ANATOMIA HUMANA GERAL', 'M2', '400 - Odontologia (25 / 25)', '0', '25', '25'),
(307699, '09020064', 'FISIOLOGIA GERAL E APLICADA I', 'M1', '400 - Odontologia (47 / 50)', '2', '49', '50'),
(307704, '09040049', 'HISTOLOGIA GERAL', 'M1', '400 - Odontologia (50 / 60)', '1', '51', '60'),
(307713, '09040050', 'ANATOMIA HUMANA DA CABEÇA E PESCOÇO', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307715, '09040050', 'ANATOMIA HUMANA DA CABEÇA E PESCOÇO', 'M2', '400 - Odontologia (22 / 23)', '0', '22', '23'),
(307718, '09020065', 'FISIOLOGIA GERAL E APLICADA II', 'M1', '400 - Odontologia (46 / 47)', '1', '47', '47'),
(307728, '09050098', 'GENÉTICA HUMANA', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307730, '09050098', 'GENÉTICA HUMANA', 'M2', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307736, '03470009', 'METODOLOGIA DO APRENDIZADO E DA PESQUISA EM ODONTOLOGIA', 'M1', '400 - Odontologia (46 / 46)', '0', '46', '46'),
(307743, '09030074', 'MICROBIOLOGIA E IMUNOLOGIA PARA ODONTOLOGIA', 'M1', '400 - Odontologia (19 / 23)', '0', '19', '23'),
(307748, '09030074', 'MICROBIOLOGIA E IMUNOLOGIA PARA ODONTOLOGIA', 'M2', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307750, '09040051', 'HISTOLOGIA BUCAL E EMBRIOLOGIA', 'M2', '400 - Odontologia (44 / 46)', '0', '44', '46'),
(307754, '03470001', 'PATOLOGIA GERAL', 'M1', '400 - Odontologia (17 / 17)', '0', '17', '17'),
(307758, '03470001', 'PATOLOGIA GERAL', 'M4', '400 - Odontologia (14 / 17)', '0', '14', '17'),
(307762, '03470001', 'PATOLOGIA GERAL', 'M2', '400 - Odontologia (17 / 17)', '0', '17', '17'),
(307765, '03470001', 'PATOLOGIA GERAL', 'M3', '400 - Odontologia (2 / 17)', '0', '2', '17'),
(307776, '03470005', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO I', 'M1', '400 - Odontologia (6 / 17)', '0', '6', '17'),
(307777, '03470005', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO I', 'M2', '400 - Odontologia (10 / 17)', '0', '10', '17'),
(307784, '03470005', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO I', 'M3', '400 - Odontologia (8 / 17)', '0', '8', '17'),
(307785, '03470005', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO I', 'M4', '400 - Odontologia (8 / 17)', '0', '8', '17'),
(307787, '03480006', 'UNIDADE PRÉ-CLÍNICA I', 'M1', '400 - Odontologia (21 / 23)', '0', '21', '23'),
(307788, '03480006', 'UNIDADE PRÉ-CLÍNICA I', 'M2', '400 - Odontologia (19 / 23)', '0', '19', '23'),
(307797, '09020002', 'FARMACOLOGIA', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307799, '09020002', 'FARMACOLOGIA', 'M2', '400 - Odontologia (17 / 23)', '0', '17', '23'),
(307801, '09050001', 'GENÉTICA E EVOLUÇÃO', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307803, '09050001', 'GENÉTICA E EVOLUÇÃO', 'M2', '400 - Odontologia (18 / 23)', '0', '18', '23'),
(308161, '03470007', 'ESTÁGIO OBSERVACIONAL ROTATÓRIO', 'P1', '400 - Odontologia (11 / 17)', '0', '11', '17'),
(308162, '03470007', 'ESTÁGIO OBSERVACIONAL ROTATÓRIO', 'P2', '400 - Odontologia (14 / 17)', '0', '14', '17'),
(308163, '03470007', 'ESTÁGIO OBSERVACIONAL ROTATÓRIO', 'P3', '400 - Odontologia (17 / 17)', '0', '17', '17'),
(308164, '03470007', 'ESTÁGIO OBSERVACIONAL ROTATÓRIO', 'P4', '400 - Odontologia (17 / 17)', '0', '17', '17'),
(308166, '03480003', 'UNIDADE PRÉ-CLINICA II', 'M1', '400 - Odontologia (12 / 12)', '0', '12', '12'),
(308168, '03480003', 'UNIDADE PRÉ-CLINICA II', 'M2', '400 - Odontologia (12 / 12)', '0', '12', '12'),
(308169, '03480003', 'UNIDADE PRÉ-CLINICA II', 'M3', '400 - Odontologia (8 / 12)', '0', '8', '12'),
(308170, '03480003', 'UNIDADE PRÉ-CLINICA II', 'M4', '400 - Odontologia (0 / 12)', '0', '0', '12'),
(308173, '03470002', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO II', 'M1', '400 - Odontologia (12 / 17)', '0', '12', '17'),
(308174, '03470002', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO II', 'M2', '400 - Odontologia (14 / 17)', '0', '14', '17'),
(308175, '03470002', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO II', 'M3', '400 - Odontologia (11 / 17)', '0', '11', '17'),
(308176, '03470002', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO II', 'M4', '400 - Odontologia (2 / 17)', '0', '2', '17'),
(308177, '03500001', 'UNIDADE SAÚDE BUCAL COLETIVA I', 'T1', '400 - Odontologia (36 / 66)', '0', '36', '66'),
(308178, '06730026', 'BIOÉTICA', 'T1', '400 - Odontologia (35 / 46)', '2', '37', '46'),
(308212, '03490001', 'UNIDADE DE CIRURGIA BMF I', 'M1', '400 - Odontologia (35 / 46)', '0', '35', '46'),
(308213, '03480007', 'UNIDADE CLÍNICA ODONTOLÓGICA I', 'M1', '400 - Odontologia (16 / 23)', '0', '16', '23'),
(308214, '03480007', 'UNIDADE CLÍNICA ODONTOLÓGICA I', 'M2', '400 - Odontologia (15 / 23)', '0', '15', '23'),
(308215, '03500002', 'UNIDADE SAÚDE BUCAL COLETIVA II', 'M1', '400 - Odontologia (36 / 46)', '0', '36', '46'),
(308376, '03490002', 'UNIDADE DE CIRURGIA BMF II', 'M1', '400 - Odontologia (25 / 46)', '0', '25', '46'),
(308379, '03500004', 'UNID. DE ORTODONTIA E ORTOPEDIA DOS MAX.', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(308381, '03500004', 'UNID. DE ORTODONTIA E ORTOPEDIA DOS MAX.', 'M2', '400 - Odontologia (4 / 23)', '0', '4', '23'),
(308382, '03500003', 'UNIDADE SAÚDE BUCAL COLETIVA III', 'M1', '400 - Odontologia (23 / 46)', '0', '23', '46'),
(308383, '03470006', 'UNIDADE CLÍNICA ODONTOLÓGICA II', 'M1', '400 - Odontologia (17 / 23)', '0', '17', '23'),
(308384, '03470006', 'UNIDADE CLÍNICA ODONTOLÓGICA II', 'M2', '400 - Odontologia (20 / 23)', '0', '20', '23'),
(308386, '03480004', 'UNIDADE PRÉ-CLINICA IV', 'M1', '400 - Odontologia (22 / 23)', '0', '22', '23'),
(308388, '03480004', 'UNIDADE PRÉ-CLINICA IV', 'M2', '400 - Odontologia (20 / 23)', '0', '20', '23'),
(308403, '03490003', 'UNIDADE DE CIRURGIA BMF III', 'M1', '400 - Odontologia (37 / 46)', '0', '37', '46'),
(308414, '03480005', 'UNIDADE DE PRÓTESE DENTÁRIA I', 'M1', '400 - Odontologia (8 / 23)', '0', '8', '23'),
(308417, '03480005', 'UNIDADE DE PRÓTESE DENTÁRIA I', 'M2', '400 - Odontologia (20 / 23)', '0', '20', '23'),
(308434, '03500006', 'UNIDADE DE CLÍNICA INFANTIL I', 'M1', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(308439, '03500006', 'UNIDADE DE CLÍNICA INFANTIL I', 'M2', '400 - Odontologia (15 / 18)', '0', '15', '18'),
(308454, '03470004', 'UNIDADE CLÍNICA ODONTOLÓGICA III', 'M1', '400 - Odontologia (13 / 33)', '0', '13', '33'),
(308456, '03470004', 'UNIDADE CLÍNICA ODONTOLÓGICA III', 'M2', '400 - Odontologia (15 / 33)', '0', '15', '33'),
(308458, '03500007', 'ODONTOLOGIA LEGAL E ORIENTAÇÃO PROFISSIONAL', 'T1', '400 - Odontologia (17 / 65)', '1', '18', '65'),
(309145, '03500013', 'UNIDADE DE CLÍNICA INFANTIL II', 'M1', '400 - Odontologia (12 / 16)', '0', '12', '16'),
(309147, '03500013', 'UNIDADE DE CLÍNICA INFANTIL II', 'M2', '400 - Odontologia (15 / 16)', '0', '15', '16'),
(309151, '03470008', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA I', 'P1', '400 - Odontologia (15 / 33)', '0', '15', '33'),
(309154, '03470008', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA I', 'P2', '400 - Odontologia (16 / 33)', '0', '16', '33'),
(309155, '03480008', 'UNIDADE DE PRÓTESE DENTÁRIA II', 'M1', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309157, '03480008', 'UNIDADE DE PRÓTESE DENTÁRIA II', 'M2', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309159, '03480013', 'TRABALHO DE CONCLUSÃO DE CURSO: PROJETO', 'P1', '400 - Odontologia (32 / 46)', '0', '32', '46'),
(309191, '03490004', 'UNID. TRAUMAT. PRÓTESE BUCO-MAXILO-FACIAL', 'M1', '400 - Odontologia (34 / 46)', '0', '34', '46'),
(309199, '03480009', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'M1', '400 - Odontologia (18 / 18)', '0', '18', '18'),
(309203, '03480009', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'M2', '400 - Odontologia (16 / 18)', '1', '17', '18'),
(309207, '03500012', 'ESTÁGIO EM CLÍNICA INFANTIL', 'P1', '400 - Odontologia (17 / 18)', '0', '17', '18'),
(309212, '03500012', 'ESTÁGIO EM CLÍNICA INFANTIL', 'P2', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309218, '03480016', 'ESTÁGIO EM PESQUISA ODONTOLÓGICA II', 'P1', '400 - Odontologia (7 / 45)', '0', '7', '45'),
(309221, '03480010', 'ESTÁGIO SUPERVISIONADO EM ÁREA ESPECÍFICA I', 'P1', '400 - Odontologia (17 / 23)', '0', '17', '23'),
(309223, '03480010', 'ESTÁGIO SUPERVISIONADO EM ÁREA ESPECÍFICA I', 'P2', '400 - Odontologia (16 / 23)', '0', '16', '23'),
(309268, '03480014', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA II', 'P1', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309269, '03480014', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA II', 'P2', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(310705, '03470003', 'UNIDADE PRÉ-CLINICA III', 'M1', '400 - Odontologia (12 / 22)', '0', '12', '22'),
(316772, '03500008', 'ESTÁGIO EM SAÚDE BUCAL COLETIVA ', 'P99', '400 - Odontologia (1 / 1)', '0', '1', '1'),
(316829, '03470003', 'UNIDADE PRÉ-CLINICA III', 'M2', '400 - Odontologia (10 / 10)', '0', '10', '10'),
(316934, '03480012', 'ESTÁGIO INTRAMUROS EM ÁREAS ESPECÍFICAS II', 'P99', '400 - Odontologia (1 / 1)', '0', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `encaminhamentos`
--

CREATE TABLE `encaminhamentos` (
  `id` int(11) NOT NULL,
  `CPF` varchar(255) DEFAULT NULL,
  `Data` date NOT NULL,
  `Especialidade` varchar(255) DEFAULT NULL,
  `Complexidade` varchar(255) DEFAULT NULL,
  `Demanda` varchar(255) DEFAULT NULL,
  `origemID` varchar(20) NOT NULL,
  `encaminhamentoOrigem` varchar(255) NOT NULL,
  `alunoEncaminhamento` varchar(50) NOT NULL,
  `responsavelEncaminhamento` varchar(50) NOT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Observacoes` varchar(255) DEFAULT NULL,
  `homologado` varchar(3) DEFAULT NULL,
  `data_homolog` date DEFAULT NULL,
  `tramitado` varchar(3) DEFAULT NULL,
  `data_tramite` date DEFAULT NULL,
  `dataFimVinculo` date DEFAULT NULL,
  `contato1` datetime DEFAULT NULL,
  `contato2` datetime DEFAULT NULL,
  `contato3` datetime DEFAULT NULL,
  `obsContato` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `encaminhamentos`
--

INSERT INTO `encaminhamentos` (`id`, `CPF`, `Data`, `Especialidade`, `Complexidade`, `Demanda`, `origemID`, `encaminhamentoOrigem`, `alunoEncaminhamento`, `responsavelEncaminhamento`, `Status`, `Observacoes`, `homologado`, `data_homolog`, `tramitado`, `data_tramite`, `dataFimVinculo`, `contato1`, `contato2`, `contato3`, `obsContato`) VALUES
(1, '112.289.390-63', '2023-11-06', 'Prótese Dentária', 'Baixa', 'Confeccção de PPR superior', '', '', '', '', 'Em espera', 'Necessita de acompanhamento constante.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '790.588.720-09', '2023-11-01', 'Periodontia', 'Média', 'Aumento de coroa clínica no 24', '', 'Origem', '14200737', '14200737', 'Em atendimento', 'Problema identificado durante a consulta inicial.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '555.666.777-88', '2023-10-06', 'Periodontia', 'Média', 'Raspagem subgengival em todos os sextantes', '', '', '', '', 'Em espera', 'Paciente relatou dor intensa.', NULL, NULL, 'Sim', '2023-11-17', NULL, NULL, NULL, NULL, NULL),
(4, '112.289.390-63', '2023-09-12', 'Cirurgia', 'Média', 'Exodontia do 38', '', '', '', '', 'Em espera', 'Tratamento de rotina.', NULL, NULL, NULL, NULL, '2023-11-17', NULL, NULL, NULL, NULL),
(5, '790.588.720-09', '2023-11-06', 'Prótese dentária', 'Média', 'Coroa unitária no dente 24', '', '', '', '', 'Em espera', 'Tratamento de rotina de odontopediatria.', NULL, NULL, 'Sim', '2023-11-17', NULL, NULL, NULL, NULL, NULL),
(12, '555.666.777-88', '2023-11-06', 'Cirurgia', 'Média', 'Dados atualizados de novo', '', 'Origem', '2010123', '2010123', 'Em atendimento', NULL, 'Sim', '2023-11-06', 'Sim', '2023-11-17', NULL, NULL, NULL, NULL, NULL),
(13, '790.588.720-09', '2023-11-06', 'Cirurgia', 'Média', 'Descrição da demanda feita no teste', '', 'Origem', '2010123', '2010123', 'Em atendimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '112.289.390-63', '2023-11-15', 'Prótese Dentária', 'Baixa', 'Descrição 15-11', '308403', 'UNIDADE DE CIRURGIA BMF III', '14200737', 'Carlos Santana', 'Aguardando homologação do encaminhamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '112.289.390-63', '2023-11-15', 'Cirurgia', 'Baixa', 'Descrição 15-11', '308403', 'UNIDADE DE CIRURGIA BMF III', '14200737', 'João da Silva', 'Aguardando homologação da alta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '112.289.390-63', '2023-11-15', 'Odontopediatria', 'Baixa', 'Descrição 15-11', '308403', 'UNIDADE DE CIRURGIA BMF III', '14200737', 'Responsavel', 'Aguardando homologação da alta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '112.289.390-63', '2023-11-15', 'Dentística', 'Alta', 'Teste voltar', '308403', 'UNIDADE DE CIRURGIA BMF III', '14200737', 'Carlos Santana', 'Aguardando homologação do encaminhamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '112.289.390-63', '2023-11-16', 'Periodontia', 'Baixa', 'Encaminhamento TESTE', '', 'Implanto', 'Encaminhado por responsável técnico', 'Responsavel', 'Encaminhamento registrado por responsável técnico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entrevista`
--

CREATE TABLE `entrevista` (
  `id_entrevista` bigint(20) NOT NULL,
  `id_aluno` varchar(50) NOT NULL,
  `id_disciplina` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `CPF` varchar(50) NOT NULL,
  `queixa` text NOT NULL,
  `doenca_YN` varchar(3) NOT NULL,
  `doenca` varchar(60) NOT NULL,
  `tto_medico_YN` varchar(3) NOT NULL,
  `tto_medico` varchar(60) NOT NULL,
  `medicacao_YN` varchar(3) NOT NULL,
  `medicacao` varchar(60) NOT NULL,
  `alergia_YN` varchar(3) NOT NULL,
  `alergia` varchar(60) NOT NULL,
  `fumante_YN` varchar(3) NOT NULL,
  `fumante` varchar(60) NOT NULL,
  `etilista_YN` varchar(3) NOT NULL,
  `etilista` varchar(60) NOT NULL,
  `ultimaConsulta` varchar(15) NOT NULL,
  `ultimoTTO` varchar(60) NOT NULL,
  `freq_Higiene` varchar(60) NOT NULL,
  `instr_Higiene` text NOT NULL,
  `fluor` text NOT NULL,
  `operado_YN` varchar(3) NOT NULL,
  `operado` varchar(60) NOT NULL,
  `cicatrizacao_YN` varchar(3) NOT NULL,
  `cicatrizacao` varchar(60) NOT NULL,
  `anestesia_YN` varchar(3) NOT NULL,
  `anestesia` varchar(60) NOT NULL,
  `hemorragia_YN` varchar(3) NOT NULL,
  `hemorragia` varchar(60) NOT NULL,
  `gravidez_YN` varchar(3) NOT NULL,
  `gravidez` varchar(8) NOT NULL,
  `historicoFamiliar` varchar(60) NOT NULL,
  `obs` varchar(120) NOT NULL,
  `medico` varchar(64) NOT NULL,
  `medicoTEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrevista`
--

INSERT INTO `entrevista` (`id_entrevista`, `id_aluno`, `id_disciplina`, `data`, `CPF`, `queixa`, `doenca_YN`, `doenca`, `tto_medico_YN`, `tto_medico`, `medicacao_YN`, `medicacao`, `alergia_YN`, `alergia`, `fumante_YN`, `fumante`, `etilista_YN`, `etilista`, `ultimaConsulta`, `ultimoTTO`, `freq_Higiene`, `instr_Higiene`, `fluor`, `operado_YN`, `operado`, `cicatrizacao_YN`, `cicatrizacao`, `anestesia_YN`, `anestesia`, `hemorragia_YN`, `hemorragia`, `gravidez_YN`, `gravidez`, `historicoFamiliar`, `obs`, `medico`, `medicoTEL`) VALUES
(1, '', '', '2023-10-23', '112.289.390-63', '', 'Sim', 'teste', 'Não', '', 'Sim', 'TESTE', 'Não', '', 'Não', '', 'Não', '', '12/03/2021', 'teste', '3x ao dia', 'Enxaguante,Escova', 'Dentifirício', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Nada consta', 'teste observação', 'Dr. X', 99999999),
(2, '', '', '2023-10-23', '112.289.390-63', '', 'Sim', 'teste', 'Não', '', 'Sim', 'TESTE', 'Não', '', 'Não', '', 'Não', '', '12/03/2021', 'teste', '3x ao dia', 'Enxaguante,Escova', 'Dentifirício', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Nada consta', 'teste observação', 'Dr. X', 99999999),
(7, 'Pedro', 'PERIODONTIA CLÍNICA', '2023-10-25', '790.588.720-09', 'queixaaaaaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(8, 'Pedro', 'PRÓTESE DENTÁRIA PARCIAL III', '2023-10-25', '964.940.820-76', 'queixaadulto', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(9, 'Pedro', 'PERIODONTIA CLÍNICA', '2023-10-25', '964.940.820-76', 'Queixa Adulto', 'Não', 'mmmmm', 'Não', '', 'Não', 'mmmmmmmm', 'Não', '', 'Não', '', 'Não', '', '2023-10-25', 'tto', '3x ao dia', 'Array', 'Array', 'Não', 'aaaaaaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'avvvvvvvv', 'ccccccc', '', 0),
(10, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(11, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(12, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(13, 'Pedro', 'ESTÁGIO EM PRONTO ATENDIMENTO (EPA)', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(14, 'Pedro', 'PERIODONTIA CLÍNICA', '2023-10-25', '964.940.820-76', 'queixaAdultoooooooo', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `entrevistaped`
--

CREATE TABLE `entrevistaped` (
  `id_entrevista` bigint(20) NOT NULL,
  `id_aluno` varchar(20) NOT NULL,
  `id_disciplinaPed` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `CPF` varchar(50) NOT NULL,
  `queixaPed` text NOT NULL,
  `probGravidez_YN` varchar(3) NOT NULL,
  `probGravidez` varchar(8) NOT NULL,
  `tipoParto` varchar(12) NOT NULL,
  `doencaInfancia_YN` varchar(3) NOT NULL,
  `doencaInfancia` varchar(60) NOT NULL,
  `internacao_YN` varchar(3) NOT NULL,
  `internacao` varchar(60) NOT NULL,
  `historicoMedicacao_YN` varchar(3) NOT NULL,
  `historicoMedicacao` varchar(60) NOT NULL,
  `alergia_YN_Ped` varchar(3) NOT NULL,
  `alergia_Ped` varchar(60) NOT NULL,
  `respiratorio_YN` varchar(3) NOT NULL,
  `respiratorio` varchar(60) NOT NULL,
  `cardiaco_YN` varchar(3) NOT NULL,
  `cardiaco` varchar(60) NOT NULL,
  `sanguineo_YN` varchar(3) NOT NULL,
  `sanguineo` varchar(60) NOT NULL,
  `diabetes_YN` varchar(3) NOT NULL,
  `diabetes` varchar(60) NOT NULL,
  `medicacao_YN_Ped` varchar(3) NOT NULL,
  `medicacao_Ped` varchar(60) NOT NULL,
  `pediatra` varchar(64) NOT NULL,
  `telPediatra` int(11) NOT NULL,
  `obs_ped` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrevistaped`
--

INSERT INTO `entrevistaped` (`id_entrevista`, `id_aluno`, `id_disciplinaPed`, `data`, `CPF`, `queixaPed`, `probGravidez_YN`, `probGravidez`, `tipoParto`, `doencaInfancia_YN`, `doencaInfancia`, `internacao_YN`, `internacao`, `historicoMedicacao_YN`, `historicoMedicacao`, `alergia_YN_Ped`, `alergia_Ped`, `respiratorio_YN`, `respiratorio`, `cardiaco_YN`, `cardiaco`, `sanguineo_YN`, `sanguineo`, `diabetes_YN`, `diabetes`, `medicacao_YN_Ped`, `medicacao_Ped`, `pediatra`, `telPediatra`, `obs_ped`) VALUES
(1, '', 'PRÓTESE DENTÁRIA PARCIAL III', '2023-10-25', '112.289.390-63', 'queixa ped', 'Sim', 'Não', 'Cesárea', 'Não', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pediatra', 0, 'teste_obs'),
(5, 'Pedro', 'PRÓTESE DENTÁRIA PARCIAL III', '2023-10-25', '964.940.820-76', 'queixaPed', 'Não', '', '', 'Não', '', 'Não', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', 0, ''),
(6, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '964.940.820-76', 'queixa ped', 'Não', '', '', 'Não', '', 'Não', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'aaaaaaaa', 0, 'aaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `especialidades`
--

CREATE TABLE `especialidades` (
  `id_especialidade` int(20) NOT NULL,
  `especialidade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `especialidades`
--

INSERT INTO `especialidades` (`id_especialidade`, `especialidade`) VALUES
(1, 'Prótese Dentária'),
(2, 'Odontopediatria'),
(3, 'Periodontia'),
(4, 'Dentística'),
(5, 'Cirurgia');

-- --------------------------------------------------------

--
-- Table structure for table `historicoatendimentos`
--

CREATE TABLE `historicoatendimentos` (
  `id_atendimentos` bigint(20) NOT NULL,
  `id_aluno` varchar(255) NOT NULL,
  `cpf` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `especialidade` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `responsavel` varchar(255) NOT NULL,
  `componente_curricular` varchar(255) NOT NULL,
  `periodo` varchar(10) NOT NULL,
  `codSus` text NOT NULL,
  `descricao_SUS` text NOT NULL,
  `homologado` varchar(3) NOT NULL,
  `data_homolog` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historicoatendimentos`
--

INSERT INTO `historicoatendimentos` (`id_atendimentos`, `id_aluno`, `cpf`, `data`, `especialidade`, `descricao`, `responsavel`, `componente_curricular`, `periodo`, `codSus`, `descricao_SUS`, `homologado`, `data_homolog`) VALUES
(1, '14200737', '999.888.777-66', '2023-11-14', 'Prótese Dentária', 'Teste regisro de atendimento', '8', 'RADIOLOGIA E IMAGINOLOGIA', '2023/2', '[\"204010225\",\"101020090\"]', '[\"RADIOGRAFIA PERIAPICAL\",\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(2, '14200737', '112.289.390-63', '2023-10-27', 'Dentística', 'Descrição 02', '2010123', 'componente', '2023/1', '[\"204010055\",\"301100152\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]', 'Não', NULL),
(3, 'Aluno', '112.289.390-63', '2023-10-26', 'Cirurgia', 'Descrição 03', 'Pedro', 'disc', '2023/1', '[\"204010055\",\"301100152\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]', 'Sim', '2023-10-30'),
(4, 'Pedro', '112.289.390-63', '2023-10-27', 'Prótese Dentária', 'aaaaaa', 'Pedro', 'componente', '2023/2', '[\"101020090\",\"201010526\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(5, 'Pedro', '112.289.390-63', '2023-10-27', 'Prótese Dentária', 'aaaaaa', 'Pedro', 'componente', '2023/2', '[\"101020090\",\"201010526\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(6, 'Pedro', '112.289.390-63', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[]', '[]', 'Não', NULL),
(7, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[\"201010232\",\"204010128\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(8, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[\"201010232\",\"204010128\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(9, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[\"201010232\",\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(10, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[\"101020090\",\"201010232\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(11, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2023/1', '[\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(12, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2023/1', '[\"203020049\",\"203020049\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]', 'Não', NULL),
(13, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2023/1', '[\"203020049\",\"203020049\",\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(14, 'Pedro', '654123789', '2023-10-30', 'Periodontia', 'aaaaaaaaaa', 'profe', 'comp', '2023/1', '[\"204010160\",\"301010153\"]', '[\"RADIOGRAFIA OCLUSAL\",\"PRIMEIRA CONSULTA ODONTOLOGICA PROGRAMu00c1TICA\"]', 'Não', NULL),
(154, '14200737', '999.888.777-66', '2023-11-14', 'Prótese Dentária', 'Teste 14-11-2023', 'Carlos Santana', 'UNIDADE CLÍNICA ODONTOLÓGICA I', '2023/2', '[\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Sim', '2023-11-14'),
(168, '14200737', '999.888.777-66', '2023-11-14', 'Prótese Dentária', 'Tesde combotao2', 'Responsavel', 'UNIDADE CLÍNICA ODONTOLÓGICA I', '2023/2', '[]', '[]', 'Não', NULL),
(169, '14200737', '999.888.777-66', '2023-11-14', 'Prótese Dentária', 'AAAAAAAAAA', 'Carlos Santana', 'UNIDADE CLÍNICA ODONTOLÓGICA I', '2023/2', '[]', '[]', 'Sim', '2023-11-14'),
(179, 'Atendimento registrado por responsável-técnico', '654123789', '2023-11-16', 'Odontopediatria', 'Descrição responsavel técnico ahauhauhauhauhauhuahua', 'Responsavel', 'PERIODONTIA CLÍNICA', '2023/2', '[]', '[]', 'Sim', '2023-11-16'),
(180, 'Atendimento registrado por responsável-técnico', '654123789', '2023-11-16', 'Prótese Dentária', 'Autocomplete', '14200737', 'Implanto', '2023/2', '[\"204010225\"]', '[\"RADIOGRAFIA PERIAPICAL\"]', 'Sim', '2023-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `materiais`
--

CREATE TABLE `materiais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(30) NOT NULL,
  `quantidade` int(6) NOT NULL,
  `tipo_material` varchar(30) DEFAULT NULL,
  `apresentacao` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `materiais`
--

INSERT INTO `materiais` (`id`, `nome`, `quantidade`, `tipo_material`, `apresentacao`) VALUES
(1, 'Fosfato de zinco', 10, 'Cimento', 'Kit'),
(2, 'Resina Acrílica', 15, 'Resina', 'Bisnaga'),
(3, 'Resina Composta cor A1', 25, 'Resina', 'Bisnaga'),
(5, 'teste2', 3, 'Cimento', 'Bisnaga'),
(6, 'teste3', 4, 'Cimento', 'Bisnaga'),
(8, 'teste7', 4, 'Resina composta', 'Frasco'),
(9, 'teste10', 5, 'Hospitalar', 'Kit'),
(10, 'gaze', 50, 'Hospitalar', 'Pacote'),
(11, 'rolo de algodão', 50, 'Hospitalar', 'Pacote'),
(12, 'anestésico', 3, 'Hospitalar', 'Frasco'),
(13, 'bbbbbbbbb', 3, 'Resina composta', 'Bisnaga'),
(14, 'ccccccccc', 3, 'Resina composta', 'Frasco'),
(15, 'teste3', 3, 'Resina composta', 'Bisnaga'),
(16, 'hauhauhauh', 4, 'Resina composta', 'Bisnaga'),
(17, 'testematerial', 12, 'Cimento', 'Frasco'),
(18, 'testeqqer coisa', 4, 'Cimento', 'Bisnaga'),
(19, 'testedenovo', 3, 'Resina composta', 'Bisnaga'),
(20, 'ionomero de vidro', 7, 'Cimento', 'Kit'),
(21, 'fosfato de zinco', 4, 'Cimento', 'Kit'),
(22, 'alginato', 2, 'Moldagem', 'Pacote'),
(23, 'polieter', 9, 'Moldagem', 'Kit'),
(24, 'silicone de condensação', 8, 'Moldagem', 'Kit'),
(26, 'resina acrílica', 116, 'Resina composta', 'Frasco'),
(28, 'TESTE 21/09', 2, 'Cimento', 'Kit'),
(30, 'Teste 28-09', 222, 'Hospitalar', 'Frasco'),
(46, 'Bioplic', 20, 'Resina', 'Bisnaga'),
(47, 'material novo', 5, 'Hospitalar', 'Kit'),
(48, 'Material novo1', 6, 'Resina composta', 'Bisnaga'),
(49, 'Material novo2', 3, 'Moldagem', 'Kit'),
(50, 'Material novo3', 12, 'Hospitalar', 'Frasco'),
(51, 'Material novo4', 5, 'Resina composta', 'Bisnaga'),
(52, 'Material novo5', 10, 'Resina', 'Bisnaga');

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `informacoesImportantes` varchar(255) NOT NULL,
  `CNS` varchar(255) DEFAULT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `nomeSocial` varchar(255) NOT NULL,
  `Rg` varchar(255) DEFAULT NULL,
  `DataNasc` date DEFAULT NULL,
  `Tel` varchar(255) DEFAULT NULL,
  `Tel2` varchar(20) NOT NULL,
  `Tel3` varchar(20) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `EstadoCivil` varchar(255) DEFAULT NULL,
  `Sexo` varchar(255) DEFAULT NULL,
  `NomeMae` varchar(255) DEFAULT NULL,
  `NomePai` varchar(255) DEFAULT NULL,
  `CorRaca` varchar(255) DEFAULT NULL,
  `PNE` varchar(255) DEFAULT NULL,
  `EnderecoTipo` varchar(255) DEFAULT NULL,
  `Cep` varchar(255) DEFAULT NULL,
  `Rua` varchar(255) DEFAULT NULL,
  `EndNumero` varchar(255) DEFAULT NULL,
  `EndComplemento` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `Cidade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`id`, `CPF`, `informacoesImportantes`, `CNS`, `Nome`, `nomeSocial`, `Rg`, `DataNasc`, `Tel`, `Tel2`, `Tel3`, `Email`, `EstadoCivil`, `Sexo`, `NomeMae`, `NomePai`, `CorRaca`, `PNE`, `EnderecoTipo`, `Cep`, `Rua`, `EndNumero`, `EndComplemento`, `Bairro`, `Cidade`) VALUES
(1, '555.666.777-88', 'Alérgico a penicilina', NULL, 'Ana Souza', '', '88776655', '1985-10-24', '', '', '', 'ana@example.com', 'CASADA', 'Feminino', 'Maria Souza', 'João Souza', '', 'Array', 'Residencial', '12345-678', 'Rua da Praia', '', '', 'Beira Mar', 'Cidade Marítima'),
(2, '790.588.720-09', '', NULL, 'Ciclana Pereira', '', '7654321', '2013-11-04', '', '', '', 'ciclana@example.com', 'CASADO', 'Feminino', 'Maria Pereira', 'José Pereira', '', 'Array', 'Residencial', '54321-987', 'Avenida das Flores', '', '', 'Bairro Central', 'Cidadelândia'),
(3, '112.289.390-63', '', NULL, 'Fulano da Silva', '', '1234567', '1985-02-11', '53 999999', '53 33333333', '', 'fulano@example.com', 'SOLTEIRO', 'Masculino', 'Ciclana da Silva', 'Beltrano da Silva', '', 'Array', 'Residencial', '12345-678', 'Rua dos Exemplos', '', '', 'Bairro das Amostras', 'Cidadópolis'),
(4, '999.888.777-66', 'Alérgico a penicilina', '12345', 'Ricardo Santos', 'Joana Santos', '33221100', '1985-10-10', '539999999', '53888888', '53777777', 'ricardo@example.com', 'SOLTEIRO', 'Masculino', 'Marta Santos', 'José Santos', 'BRANCA', 'Array', 'Residencial', '98765-432', 'Rua dos Sonhos', '88', 'Apto. 1', 'Jardim Esperança', 'Cidade Feliz'),
(5, '111.222.333-44', '', NULL, 'José da Silva', '', '12345678', '1976-01-27', '', '', '', 'jose@example.com', 'CASADO', 'Masculino', 'Maria da Silva', 'Antônio da Silva', '', 'Array', 'Residencial', '76543-210', 'Rua das Árvores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(6, '964.940.820-76', '', NULL, 'Beltrano Alves', '', '11223344', '1984-01-10', '', '', '', 'beltrano@example.com', 'DIVORCIADO', 'Masculino', 'Joana Alves', 'Pedro Alves', '', 'Array', 'Comercial', '98765-432', 'Rua do Comércio', '', '', 'Centro Empresarial', 'Cidadeforte'),
(7, '777.888.999-11', '', NULL, 'Lucia Lima', '', '11223344', '1980-05-13', '', '', '', 'lucia@example.com', 'SOLTEIRA', 'Feminino', 'Ana Lima', 'Pedro Lima', '', 'Array', 'Residencial', '54321-123', 'Rua das Palmeiras', '', '', 'Jardim Tropical', 'Cidadeverde'),
(8, '111.222.333-55', '', NULL, 'Mariana Costa', '', '98765432', '1968-01-02', '', '', '', 'mariana@example.com', 'CASADA', 'Feminino', 'Ana Costa', 'José Costa', '', 'Array', 'Residencial', '76543-210', 'Rua das Flores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(9, '333.222.111-00', '', NULL, 'Isabela Lima', '', '65432109', '1976-04-21', '', '', '', 'isabela@example.com', 'SOLTEIRA', 'Feminino', 'Marta Lima', 'Pedro Lima', '', 'Array', 'Residencial', '54321-123', 'Rua das Palmeiras', '', '', 'Jardim Tropical', 'Cidadeverde'),
(10, '222.111.333-55', '', NULL, 'Sandra Oliveira', '', '54321098', '1966-03-17', '', '', '', 'sandra@example.com', 'SOLTEIRA', 'Feminino', 'Ana Oliveira', 'José Oliveira', '', 'Array', 'Residencial', '98765-432', 'Rua dos Sonhos', '', '', 'Jardim Esperança', 'Cidade Feliz'),
(11, '444.333.222-11', '', NULL, 'João Pereira', '', '12345678', '1975-04-15', '', '', '', 'joao@example.com', 'CASADO', 'Masculino', 'Maria Pereira', 'Antônio Pereira', '', 'Array', 'Residencial', '76543-210', 'Rua das Flores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(12, '666.555.444-33', '', NULL, 'Pedro Rodrigues', '', '56789012', '1956-08-06', '', '', '', 'pedro@example.com', 'SOLTEIRO', 'Masculino', 'Clara Rodrigues', 'José Rodrigues', '', 'Array', 'Residencial', '98765-432', 'Rua dos Sonhos', '', '', 'Jardim Esperança', 'Cidade Feliz'),
(13, '888.777.666-44', '', NULL, 'Carlos Santos', '', '43210987', '1971-05-10', '', '', '', 'carlos@example.com', 'CASADO', 'Masculino', 'Marta Santos', 'Pedro Santos', '', 'Array', 'Residencial', '54321-123', 'Rua das Palmeiras', '', '', 'Jardim Tropical', 'Cidadeverde'),
(14, '999.888.777-33', '', NULL, 'Larissa Pereira', '', '76543210', '1965-10-10', '', '', '', 'larissa@example.com', 'SOLTEIRA', 'Feminino', 'Maria Pereira', 'José Pereira', '', 'Array', 'Residencial', '76543-210', 'Rua das Flores', '', '', 'Jardim das Flores', 'Cidadefeliz');

-- --------------------------------------------------------

--
-- Table structure for table `plano_tto`
--

CREATE TABLE `plano_tto` (
  `id` int(11) NOT NULL,
  `CPF` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `queixa` varchar(255) DEFAULT NULL,
  `aspectoRelevante` varchar(255) DEFAULT NULL,
  `especialidade` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `aluno_id` varchar(255) DEFAULT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `componente_curricular` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plano_tto`
--

INSERT INTO `plano_tto` (`id`, `CPF`, `data`, `queixa`, `aspectoRelevante`, `especialidade`, `descricao`, `aluno_id`, `responsavel`, `componente_curricular`) VALUES
(1, '790.588.720-09', '2023-10-19', 'Queixa', 'Aspectos', 'Odontopediatria,Dentística', 'Descrição', 'Aluno', 'Professor', 'Disciplina'),
(2, '112.289.390-63', '2023-10-09', 'queixa 1', 'relevancia', 'prótese, cirurgia', 'descricao', 'ALUNO X', 'PROF. Y', 'UPD-2'),
(3, '112.289.390-63', '2023-10-24', 'queixa 2', 'aspectos2', 'Dentística', 'Descr2', 'ALUNO W', 'PROF. Z', 'ECO-2'),
(7, '790.588.720-09', '2023-10-25', 'plano com CPF', 'aspectos com CPF', 'Prótese Dentária,Odontopediatria,Periodontia,Dentística', 'Desc', 'Pedro', 'prof', 'disci'),
(8, '790.588.720-09', '2023-10-25', 'queixa', 'aspec', 'Prótese Dentária,Odontopediatria,Periodontia', 'des', 'Pedro', 'prof', 'disc'),
(9, '964.940.820-76', '2023-10-25', 'plano com CPF', 'aspects', 'Odontopediatria,Periodontia,Dentística', 'desc', 'Pedro', 'prof', 'disc'),
(15, '964.940.820-76', '2023-10-25', 'agora', 'a', 'Prótese Dentária,Odontopediatria', 'asb', 'Pedro', 'aaa', 'bbb'),
(16, '112.289.390-63', '2023-11-16', 'Queixa responsavel', 'aspecto responsavel', 'Prótese Dentária,Periodontia', 'Descrição responsavel', 'Cadastrado pelo responsável técnico', 'Responsavel', 'Implanto');

-- --------------------------------------------------------

--
-- Table structure for table `procedimentos_sus`
--

CREATE TABLE `procedimentos_sus` (
  `cod_sus` int(6) NOT NULL,
  `nome` varchar(100) CHARACTER SET latin1 COLLATE latin1_danish_ci NOT NULL,
  `tipo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `procedimentos_sus`
--

INSERT INTO `procedimentos_sus` (`cod_sus`, `nome`, `tipo`) VALUES
(101020090, 'SELAMENTO PROVISÓRIO DE CAVIDADE DENTÁRIA', 'AMB'),
(201010232, 'BIÓPSIA DE GLÂNDULA SALIVAR', 'CEO'),
(201010348, 'BIÓPSIA DE OSSO DO CR?NIO E DA FACE', 'CEO'),
(201010526, 'BIÓPSIA DOS TECIDOS MOLES DA BOCA', 'CEO'),
(203020049, 'IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)', 'AMB'),
(204010055, 'RADIOGRAFIA DE ARTICULACAO TEMPORO-MANDIBULAR BILATERAL', 'AMB'),
(204010080, 'RADIOGRAFIA DE CRANIO (PA + LATERAL)', 'AMB'),
(204010128, 'RADIOGRAFIA DE OSSOS DA FACE (MN + LATERAL + HIRTZ)', 'AMB'),
(204010144, 'RADIOGRAFIA DE SEIOS DA FACE (FN + MN + LATERAL + HIRTZ)', 'AMB'),
(204010160, 'RADIOGRAFIA OCLUSAL', 'AMB'),
(204010179, 'RADIOGRAFIA PANORÂMICA', 'AMB'),
(204010217, 'RADIOGRAFIA INTERPROXIMAL (BITE WING)', 'AMB'),
(204010225, 'RADIOGRAFIA PERIAPICAL', 'AMB'),
(301010153, 'PRIMEIRA CONSULTA ODONTOLOGICA PROGRAMÁTICA', 'AMB'),
(301100152, 'RETIRADA DE PONTOS DE CIRURGIAS BASICAS (POR PACIENTE)', 'AMB'),
(307010015, 'CAPEAMENTO PULPAR', 'AMB'),
(307010058, 'TRATAMENTO DE NEVRALGIAS FACIAIS', 'CEO'),
(307010066, 'TRATAMENTO INICIAL DO DENTE TRAUMATIZADO', 'AMB'),
(307010074, 'TRATAMENTO RESTAURADOR ATRAUMÁTICO (TRA/ART)', 'AMB'),
(307020010, 'ACESSO A POLPA DENTÁRIA E MEDICAÇÃO (POR DENTE)', 'AMB'),
(307020029, 'CURATIVO DE DEMORA C/ OU S/ PREPARO BIOMECÂNICO', 'AMB'),
(307020037, 'TRATAMENTO ENDODÔNTICO DE DENTE DECÍDUO', 'CEO'),
(307020045, 'TRATAMENTO ENDODÔNTICO DE DENTE PERMANENTE BIRRADICULAR', 'CEO'),
(307020053, 'TRATAMENTO ENDODÔNTICO DE DENTE PERMANENTE COM TRÊS OU MAIS RAÍZES', 'CEO'),
(307020061, 'TRATAMENTO ENDOD?NTICO DE DENTE PERMANENTE UNIRRADICULAR', 'CEO'),
(307020070, 'PULPOTOMIA DENTÁRIA', 'AMB'),
(307020088, 'RETRATAMENTO ENDOD?NTICO EM DENTE PERMANENTE BI-RADICULAR', 'CEO'),
(307020096, 'RETRATAMENTO ENDODÔNTICO EM DENTE PERMANENTE COM 3 OU MAIS RAÍZES', 'CEO'),
(307020100, 'RETRATAMENTO ENDODÔNTICO EM DENTE PERMANENTE UNI-RADICULAR', 'CEO'),
(307030024, 'RASPAGEM ALISAMENTO SUBGENGIVAIS (POR SEXTANTE)-PNE', 'PNE'),
(307030032, 'RASPAGEM CORONO-RADICULAR (POR SEXTANTE)', 'CEO'),
(307030059, 'RASPAGEM ALISAMENTO E POLIMENTO SUPRAGENGIVAIS (POR SEXTANTE)', 'AMB'),
(307030067, 'TRATAMENTO DE GENGIVITE ULCERATIVA NECROSANTE AGUDA (GUNA)', 'AMB'),
(307030075, 'TRATAMENTO DE LESÕES DA MUCOSA ORAL', 'AMB'),
(307030083, 'TRATAMENTO DE PERICORONARITE', 'AMB'),
(307040062, 'MANUTENÇÃO PERIÓDICA DE PRÓTESE BUCO-MAXILO-FACIAL', 'AMB'),
(307040089, 'REEMBASAMENTO E CONSERTO DE PRÓTESE DENTÁRIA', 'AMB'),
(307040151, 'AJUSTE OCLUSAL', 'AMB'),
(401010058, 'EXCISÃO DE LESÃO E/OU SUTURA DE FERIMENTO DA PELE ANEXOS E MUCOSA', 'AMB'),
(401010082, 'FRENECTOMIA', 'CEO'),
(404010512, 'SINUSOTOMIA TRANSMAXILAR', 'CEO'),
(404020054, 'DRENAGEM DE ABSCESSO DA BOCA E ANEXOS', 'CEO'),
(404020097, 'EXCISÃO E SUTURA DE LESÃO NA BOCA', 'CEO'),
(404020100, 'EXCISÃO EM CUNHA DE LÁBIO', 'CEO'),
(404020313, 'RETIRADA DE CORPO ESTRANHO DOS OSSOS DA FACE', 'CEO'),
(404020488, 'OSTEOTOMIA DAS FRATURAS ALVEOLO-DENTÁRIAS', 'CEO'),
(404020623, 'RETIRADA DE MATERIAL DE SÍNTESE ÓSSEA/ DENTÁRIA', 'CEO'),
(408060352, 'RETIRADA DE FIO OU PINO INTRA-ÓSSEO', 'AMB'),
(414010256, 'TRATAMENTO CIRÚRGICO DE FÍSTULA ORO-SINUSAL / ORO-NASAL', 'CEO'),
(414010345, 'EXCISÃO DE CÁLCULO DE GLÂNDULA SALIVAR', 'CEO'),
(414010361, 'EXERESE DE CISTO ODONTOGÊNICO E NÃO-ODONTOGÊNICO', 'CEO'),
(414010388, 'TRATAMENTO CIR?RGICO DE FÍSTULA INTRA/ EXTRA-ORAL', 'CEO'),
(414020030, 'APROFUNDAMENTO DE VESTÍBULO ORAL (POR SEXTANTE)', 'CEO'),
(414020073, 'CURETAGEM PERIAPICAL', 'CEO'),
(414020081, 'ENXERTO GENGIVAL', 'CEO'),
(414020090, 'ENXERTO ÓSSEO DE ÁREA DOADORA INTRABUCAL', 'CEO'),
(414020120, 'EXODONTIA DE DENTE DECÍDUO', 'AMB'),
(414020138, 'EXODONTIA DE DENTE PERMANENTE', 'AMB'),
(414020146, 'EXODONTIA MULTIPLA COM ALVEOLOPLASTIA POR SEXTANTE', 'CEO'),
(414020154, 'GENGIVECTOMIA (POR SEXTANTE)', 'CEO'),
(414020162, 'GENGIVOPLASTIA (POR SEXTANTE)', 'CEO'),
(414020170, 'GLOSSORRAFIA', 'CEO'),
(414020243, 'REIMPLANTE E TRANSPLANTE DENTAL (POR ELEMENTO)', 'CEO'),
(414020359, 'TRATAMENTO CIRÚRGICO DE HEMORRAGIA BUCO-DENTAL', 'CEO'),
(414020367, 'TRATAMENTO CIRÚRGICO PARA TRACIONAMENTO DENTAL', 'CEO'),
(414020375, 'TRATAMENTO CIRÚRGICO PERIODONTAL (POR SEXTANTE)', 'CEO'),
(414020383, 'TRATAMENTO DE ALVEOLITE', 'CEO'),
(414020405, 'ULOTOMIA/ULECTOMIA', 'CEO'),
(701070013, 'APARELHO FIXO BILATERAL PARA FECHAMENTO DE DIASTEMA', 'AMB'),
(701070056, 'COROA PROVISÓRIA', 'AMB'),
(701070072, 'PLACA OCLUSAL', 'CEO'),
(701070080, 'PLANO INCLINADO', 'AMB');

-- --------------------------------------------------------

--
-- Table structure for table `projetos`
--

CREATE TABLE `projetos` (
  `id_projeto` int(11) NOT NULL,
  `cod_atividade` int(11) NOT NULL,
  `atividade` varchar(255) NOT NULL,
  `tipoProjeto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projetos`
--

INSERT INTO `projetos` (`id_projeto`, `cod_atividade`, `atividade`, `tipoProjeto`) VALUES
(1, 345, 'Implanto', 'EXT'),
(2, 123, 'Perio', '');

-- --------------------------------------------------------

--
-- Table structure for table `regulacaointerna`
--

CREATE TABLE `regulacaointerna` (
  `id_regulacao` bigint(20) NOT NULL,
  `id_turma` varchar(255) NOT NULL,
  `id_matricula` varchar(50) NOT NULL,
  `data_pedido` date NOT NULL,
  `tipo_regulacao` varchar(50) NOT NULL,
  `solicitacaoDescricao` text NOT NULL,
  `consultaPrevista` date DEFAULT NULL,
  `status_regulacao` varchar(255) NOT NULL,
  `data_tramite` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regulacaointerna`
--

INSERT INTO `regulacaointerna` (`id_regulacao`, `id_turma`, `id_matricula`, `data_pedido`, `tipo_regulacao`, `solicitacaoDescricao`, `consultaPrevista`, `status_regulacao`, `data_tramite`) VALUES
(4, '309151', '14200737', '2023-11-09', 'Desvincular', 'bbbbbbbbbb', NULL, 'Solicitado', '2023-11-17'),
(5, '308403', '14200737', '2023-11-08', 'Desvincular', 'Desistência/AbandonoUPDATE', NULL, 'Devolvido ao usuário', '2023-11-17'),
(6, '309155', '14200737', '2023-11-08', 'Novo vínculo', 'Paciente novo com pendência', NULL, 'Devolvido ao usuário', '2023-11-17'),
(7, '309155', '14200737', '2023-11-08', 'Novo vínculo', 'Paciente novo', NULL, 'Tramitado', '2023-11-17'),
(9, '308403', '14200737', '2023-11-09', 'Novo vínculo', 'Teste com data', '2023-11-10', 'Solicitado', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relação_alunos_disciplinas`
--

CREATE TABLE `relação_alunos_disciplinas` (
  `matricula` varchar(255) NOT NULL COMMENT 'matricula do aluno',
  `nome` varchar(255) NOT NULL COMMENT 'nome do aluno',
  `turma_id` varchar(255) NOT NULL COMMENT 'Código da disciplina, é o mesmo para diferentes turmas',
  `periodo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relação_alunos_disciplinas`
--

INSERT INTO `relação_alunos_disciplinas` (`matricula`, `nome`, `turma_id`, `periodo`) VALUES
('23200429', 'ADRIAN RIBEIRO MARQUES', '307682', '2023/2'),
('23200076', 'CAMILA ERNA ZANELA', '307682', '2023/2'),
('23200456', 'CAMILA ROVADOSCKI ZAT', '307682', '2023/2'),
('23200434', 'CLARICE SCHWAMBACH BARCELOS', '307682', '2023/2'),
('23200460', 'ANA CAROLINA ROSA FERREIRA', '307682', '2023/2'),
('23201139', 'CAROLINE DUARTE DUARTE', '307682', '2023/2'),
('21202296', 'Cauane Aires de Souza', '307682', '2023/2'),
('23200453', 'ANA CAROLINA HEUSNER', '307682', '2023/2'),
('23200438', 'DAIANE JACOBSEN RACKOW', '307682', '2023/2'),
('23200451', 'EDUARDA CAVALHEIRO DA SILVA', '307682', '2023/2'),
('23200078', 'EMANUELLE DE BRITO VERCELINO', '307682', '2023/2'),
('23200425', 'ESTHER SOARES GOMES', '307682', '2023/2'),
('23200426', 'FABIANA COPPE', '307682', '2023/2'),
('23200452', 'GIOVANNA OLIVEIRA DE MATTOS LEON', '307682', '2023/2'),
('23200439', 'GUILHERME DE OLIVEIRA CREMA', '307682', '2023/2'),
('23200444', 'HERLYTA DAIARA MARQUES DOS SANTOS', '307682', '2023/2'),
('23200437', 'IGOR FERREIRA NUNES', '307682', '2023/2'),
('23200443', 'IKARO MACIEL CARRETTS', '307682', '2023/2'),
('23201140', 'INARA CECILIANO CAVALHEIRO', '307682', '2023/2'),
('23200436', 'INGRID MORENO DA SILVA', '307682', '2023/2'),
('23201270', 'ISABELLA RIBEIRO PRESSA', '307682', '2023/2'),
('23200446', 'JULIANA JESKE LEITZKE', '307682', '2023/2'),
('23201508', 'JULIA SILVA GOEBEL', '307682', '2023/2'),
('23202038', 'TALISON COSTA DA SILVA', '307682', '2023/2'),
('23200429', 'ADRIAN RIBEIRO MARQUES', '307687', '2023/2'),
('23200453', 'ANA CAROLINA HEUSNER', '307687', '2023/2'),
('23200460', 'ANA CAROLINA ROSA FERREIRA', '307687', '2023/2'),
('23200076', 'CAMILA ERNA ZANELA', '307687', '2023/2'),
('23200456', 'CAMILA ROVADOSCKI ZAT', '307687', '2023/2'),
('23201139', 'CAROLINE DUARTE DUARTE', '307687', '2023/2'),
('23200434', 'CLARICE SCHWAMBACH BARCELOS', '307687', '2023/2'),
('20103687', 'Diogo Póky Jacinto', '307687', '2023/2'),
('23200438', 'DAIANE JACOBSEN RACKOW', '307687', '2023/2'),
('23200451', 'EDUARDA CAVALHEIRO DA SILVA', '307687', '2023/2'),
('23200078', 'EMANUELLE DE BRITO VERCELINO', '307687', '2023/2'),
('23200425', 'ESTHER SOARES GOMES', '307687', '2023/2'),
('23200426', 'FABIANA COPPE', '307687', '2023/2'),
('23200452', 'GIOVANNA OLIVEIRA DE MATTOS LEON', '307687', '2023/2'),
('23200439', 'GUILHERME DE OLIVEIRA CREMA', '307687', '2023/2'),
('23200444', 'HERLYTA DAIARA MARQUES DOS SANTOS', '307687', '2023/2'),
('23200437', 'IGOR FERREIRA NUNES', '307687', '2023/2'),
('23200443', 'IKARO MACIEL CARRETTS', '307687', '2023/2'),
('23201140', 'INARA CECILIANO CAVALHEIRO', '307687', '2023/2'),
('23200436', 'INGRID MORENO DA SILVA', '307687', '2023/2'),
('23201270', 'ISABELLA RIBEIRO PRESSA', '307687', '2023/2'),
('21201051', 'IURI HORNKE TUCHTENHAGEN', '307687', '2023/2'),
('23200446', 'JULIANA JESKE LEITZKE', '307687', '2023/2'),
('23201508', 'JULIA SILVA GOEBEL', '307687', '2023/2'),
('22202730', 'Veronica Salvador ', '307687', '2023/2'),
('23200429', 'ADRIAN RIBEIRO MARQUES', '307699', '2023/2'),
('23200453', 'ANA CAROLINA HEUSNER', '307699', '2023/2'),
('23200460', 'ANA CAROLINA ROSA FERREIRA', '307699', '2023/2'),
('23200076', 'CAMILA ERNA ZANELA', '307699', '2023/2'),
('23200456', 'CAMILA ROVADOSCKI ZAT', '307699', '2023/2'),
('23201139', 'CAROLINE DUARTE DUARTE', '307699', '2023/2'),
('21202296', 'Cauane Aires de Souza', '307699', '2023/2'),
('23200434', 'CLARICE SCHWAMBACH BARCELOS', '307699', '2023/2'),
('23200438', 'DAIANE JACOBSEN RACKOW', '307699', '2023/2'),
('23200451', 'EDUARDA CAVALHEIRO DA SILVA', '307699', '2023/2'),
('23200078', 'EMANUELLE DE BRITO VERCELINO', '307699', '2023/2'),
('23200425', 'ESTHER SOARES GOMES', '307699', '2023/2'),
('23200426', 'FABIANA COPPE', '307699', '2023/2'),
('23200452', 'GIOVANNA OLIVEIRA DE MATTOS LEON', '307699', '2023/2'),
('23200439', 'GUILHERME DE OLIVEIRA CREMA', '307699', '2023/2'),
('22202724', 'HELENA HERNANDES MATHEUS', '307699', '2023/2'),
('23200444', 'HERLYTA DAIARA MARQUES DOS SANTOS', '307699', '2023/2'),
('23200437', 'IGOR FERREIRA NUNES', '307699', '2023/2'),
('23200443', 'IKARO MACIEL CARRETTS', '307699', '2023/2'),
('23201140', 'INARA CECILIANO CAVALHEIRO', '307699', '2023/2'),
('23200436', 'INGRID MORENO DA SILVA', '307699', '2023/2'),
('23201270', 'ISABELLA RIBEIRO PRESSA', '307699', '2023/2'),
('22202162', 'JHENIFFER GONCALVES DE OLIVEIRA', '307699', '2023/2'),
('23200449', 'JOAO GABRIEL MUNHOZ PEREIRA', '307699', '2023/2'),
('23200446', 'JULIANA JESKE LEITZKE', '307699', '2023/2'),
('23201508', 'JULIA SILVA GOEBEL', '307699', '2023/2'),
('23200448', 'KAILANY MIKAELA DE OLIVEIRA', '307699', '2023/2'),
('23201187', 'LEONARDO SOUZA PERCHIN', '307699', '2023/2'),
('23201465', 'LETICIA ESTOL DIAS DE OLIVEIRA', '307699', '2023/2'),
('22102357', 'LORENZO ESCARRONE DE LIMA', '307699', '2023/2'),
('23200431', 'LUCAS DE CRISTO VIANA', '307699', '2023/2'),
('23200442', 'LUIS GUSTAVO ULGUIM TAVARES', '307699', '2023/2'),
('23200435', 'MANUELA DE MELLO GARRE', '307699', '2023/2'),
('23201269', 'MARIA EDUARDA HERNANDES GARCIA', '307699', '2023/2'),
('23104842', 'Maria Loandra Azevedo de Oliveira', '307699', '2023/2'),
('23200441', 'MARIA LUIZA DOS SANTOS LIMA', '307699', '2023/2'),
('23200428', 'MARIA SOFHIA COSTA DE OLIVEIRA', '307699', '2023/2'),
('23200459', 'MATHEUS BARRETO MULLER', '307699', '2023/2'),
('23201488', 'NICOLY SOUZA RAMOS', '307699', '2023/2'),
('23200454', 'RAFAELA GONCALVES TORRES', '307699', '2023/2'),
('23200447', 'RAPHAEL IANAGONI NUNES', '307699', '2023/2'),
('23200424', 'RHAYANY FERREIRA SANES', '307699', '2023/2'),
('23200423', 'Tainá Belarmino', '307699', '2023/2'),
('23202038', 'TALISON COSTA DA SILVA', '307699', '2023/2'),
('22202727', 'Tatiana Serutina Lopes da Silva', '307699', '2023/2'),
('23201489', 'VANESSA SCHILLER DRAWANZ', '307699', '2023/2'),
('23200458', 'VITOR JAKUBOWSKI ZORATTO', '307699', '2023/2'),
('23201490', 'YASMIN PAULA DOS SANTOS', '307699', '2023/2'),
('23201491', 'YASMIN RODRIGUES DE AGUIAR', '307699', '2023/2'),
('23200429', 'ADRIAN RIBEIRO MARQUES', '307704', '2023/2'),
('22202212', 'ALICE CALDEIRA FRANCIONI LANG', '307704', '2023/2'),
('23200453', 'ANA CAROLINA HEUSNER', '307704', '2023/2'),
('23200460', 'ANA CAROLINA ROSA FERREIRA', '307704', '2023/2'),
('23200076', 'CAMILA ERNA ZANELA', '307704', '2023/2'),
('23200456', 'CAMILA ROVADOSCKI ZAT', '307704', '2023/2'),
('23201139', 'CAROLINE DUARTE DUARTE', '307704', '2023/2'),
('23200434', 'CLARICE SCHWAMBACH BARCELOS', '307704', '2023/2'),
('23200438', 'DAIANE JACOBSEN RACKOW', '307704', '2023/2'),
('23200451', 'EDUARDA CAVALHEIRO DA SILVA', '307704', '2023/2'),
('23200078', 'EMANUELLE DE BRITO VERCELINO', '307704', '2023/2'),
('23200425', 'ESTHER SOARES GOMES', '307704', '2023/2'),
('23200426', 'FABIANA COPPE', '307704', '2023/2'),
('23100308', 'GABRIELA DE AVILA COSTA', '307704', '2023/2'),
('23200452', 'GIOVANNA OLIVEIRA DE MATTOS LEON', '307704', '2023/2'),
('23200439', 'GUILHERME DE OLIVEIRA CREMA', '307704', '2023/2'),
('22102994', 'GUILHERME TEIXEIRA DA SILVEIRA', '307704', '2023/2'),
('23200444', 'HERLYTA DAIARA MARQUES DOS SANTOS', '307704', '2023/2'),
('23200437', 'IGOR FERREIRA NUNES', '307704', '2023/2'),
('23200443', 'IKARO MACIEL CARRETTS', '307704', '2023/2'),
('23201140', 'INARA CECILIANO CAVALHEIRO', '307704', '2023/2'),
('23200436', 'INGRID MORENO DA SILVA', '307704', '2023/2'),
('23201270', 'ISABELLA RIBEIRO PRESSA', '307704', '2023/2'),
('22202162', 'JHENIFFER GONCALVES DE OLIVEIRA', '307704', '2023/2'),
('23200446', 'JULIANA JESKE LEITZKE', '307704', '2023/2'),
('23201508', 'JULIA SILVA GOEBEL', '307704', '2023/2'),
('23200448', 'KAILANY MIKAELA DE OLIVEIRA', '307704', '2023/2'),
('22104446', 'KAUANNA DIAS PENNY', '307704', '2023/2'),
('23201187', 'LEONARDO SOUZA PERCHIN', '307704', '2023/2'),
('23201465', 'LETICIA ESTOL DIAS DE OLIVEIRA', '307704', '2023/2'),
('22102357', 'LORENZO ESCARRONE DE LIMA', '307704', '2023/2'),
('23200431', 'LUCAS DE CRISTO VIANA', '307704', '2023/2'),
('23200442', 'LUIS GUSTAVO ULGUIM TAVARES', '307704', '2023/2'),
('23200435', 'MANUELA DE MELLO GARRE', '307704', '2023/2'),
('23100554', 'MARCELLA GONCALVES BORBA', '307704', '2023/2'),
('23201269', 'MARIA EDUARDA HERNANDES GARCIA', '307704', '2023/2'),
('23104842', 'Maria Loandra Azevedo de Oliveira', '307704', '2023/2'),
('23200441', 'MARIA LUIZA DOS SANTOS LIMA', '307704', '2023/2'),
('23200428', 'MARIA SOFHIA COSTA DE OLIVEIRA', '307704', '2023/2'),
('23200459', 'MATHEUS BARRETO MULLER', '307704', '2023/2'),
('23201488', 'NICOLY SOUZA RAMOS', '307704', '2023/2'),
('23105003', 'PAMELA REGINA XAVIER HERNANDORENA GARCIA', '307704', '2023/2'),
('23200454', 'RAFAELA GONCALVES TORRES', '307704', '2023/2'),
('23200447', 'RAPHAEL IANAGONI NUNES', '307704', '2023/2'),
('23200424', 'RHAYANY FERREIRA SANES', '307704', '2023/2'),
('23200423', 'Tainá Belarmino', '307704', '2023/2'),
('23202038', 'TALISON COSTA DA SILVA', '307704', '2023/2'),
('23201489', 'VANESSA SCHILLER DRAWANZ', '307704', '2023/2'),
('23200458', 'VITOR JAKUBOWSKI ZORATTO', '307704', '2023/2'),
('23201490', 'YASMIN PAULA DOS SANTOS', '307704', '2023/2'),
('23201491', 'YASMIN RODRIGUES DE AGUIAR', '307704', '2023/2'),
('23105146', 'ALEXANDRE SANTOS DE OLIVEIRA', '307713', '2023/2'),
('23101806', 'ANA LAURA MENDES BRUSAMARELLO', '307713', '2023/2'),
('23103277', 'DIOVANA FONSECA FERREIRA', '307713', '2023/2'),
('23103269', 'EDUARDA RITTES PEREIRA', '307713', '2023/2'),
('23103272', 'ESTELA DE SOUZA WALTZER', '307713', '2023/2'),
('23100308', 'GABRIELA DE AVILA COSTA', '307713', '2023/2'),
('23103253', 'GABRIELE DIAS MENEZES', '307713', '2023/2'),
('23103263', 'GABRIEL MASAMI BERNARDES UTIYAMA', '307713', '2023/2'),
('23105145', 'IAN REINHARDT MORAN', '307713', '2023/2'),
('23100395', 'ISABELLE PENELUC ROCHA', '307713', '2023/2'),
('23100994', 'JADER LUIZ PETTER TESSMER FILHO', '307713', '2023/2'),
('23103524', 'JOAO PEDRO PORCIUNCULA OLIVEIRA', '307713', '2023/2'),
('23104529', 'JULIA AMONTE ROTA PEREIRA', '307713', '2023/2'),
('23100396', 'JULIA MARRONI DA ROSA', '307713', '2023/2'),
('23103803', 'LARISSA MESQUITA DE ALMEIDA', '307713', '2023/2'),
('23103276', 'LAURA BANDIERA', '307713', '2023/2'),
('23103273', 'LUANA CRISTINA BRASSOLOTO', '307713', '2023/2'),
('23103271', 'LUANA PERGHER BOTTEGA', '307713', '2023/2'),
('23104530', 'LUCAS SARAIVA MASCARENHAS', '307713', '2023/2'),
('23103265', 'MARCIELE DAMACENA RODRIGUES', '307713', '2023/2'),
('23101809', 'MATHEUS CAVALCANTE DOS SANTOS', '307713', '2023/2'),
('23105003', 'PAMELA REGINA XAVIER HERNANDORENA GARCIA', '307713', '2023/2'),
('23100564', 'RAFAELA NUNES RUSSO', '307713', '2023/2'),
('23105146', 'ALEXANDRE SANTOS DE OLIVEIRA', '307718', '2023/2'),
('22203364', 'ANA CLARA FAZENDA ARAUJO', '307718', '2023/2'),
('23101806', 'ANA LAURA MENDES BRUSAMARELLO', '307718', '2023/2'),
('23103268', 'ANDREI COELHO FETTER', '307718', '2023/2'),
('22202679', 'CAMILA SANTIN DA SILVA', '307718', '2023/2'),
('22104445', 'CAROLINE MENDES GARCIAS', '307718', '2023/2'),
('23103277', 'DIOVANA FONSECA FERREIRA', '307718', '2023/2'),
('23103269', 'EDUARDA RITTES PEREIRA', '307718', '2023/2'),
('23105076', 'EDUARDO DA SILVA MARCELLO', '307718', '2023/2'),
('23103272', 'ESTELA DE SOUZA WALTZER', '307718', '2023/2'),
('23104647', 'FELIPE DE OLIVEIRA CREMA', '307718', '2023/2'),
('22202219', 'FREDERICO PEREIRA CASTILHO', '307718', '2023/2'),
('23103253', 'GABRIELE DIAS MENEZES', '307718', '2023/2'),
('23103263', 'GABRIEL MASAMI BERNARDES UTIYAMA', '307718', '2023/2'),
('23105144', 'GUILHERME PEREIRA OSSANES', '307718', '2023/2'),
('22202230', 'HELENA CAETANO MORALE DE OLIVEIRA', '307718', '2023/2'),
('23105145', 'IAN REINHARDT MORAN', '307718', '2023/2'),
('23100395', 'ISABELLE PENELUC ROCHA', '307718', '2023/2'),
('23100994', 'JADER LUIZ PETTER TESSMER FILHO', '307718', '2023/2'),
('23103524', 'JOAO PEDRO PORCIUNCULA OLIVEIRA', '307718', '2023/2'),
('23104529', 'JULIA AMONTE ROTA PEREIRA', '307718', '2023/2'),
('23100396', 'JULIA MARRONI DA ROSA', '307718', '2023/2'),
('23103803', 'LARISSA MESQUITA DE ALMEIDA', '307718', '2023/2'),
('23103276', 'LAURA BANDIERA', '307718', '2023/2'),
('23103818', 'LAURA LEAL LISBOA', '307718', '2023/2'),
('22202627', 'LAURA SCHEIDEMANTEL GARCIA', '307718', '2023/2'),
('23101797', 'LEONARDO AUGUSTO PEREIRA DAS DORES', '307718', '2023/2'),
('23103273', 'LUANA CRISTINA BRASSOLOTO', '307718', '2023/2'),
('23103271', 'LUANA PERGHER BOTTEGA', '307718', '2023/2'),
('23102236', 'LUCAS GEHRKE ALVES', '307718', '2023/2'),
('23104530', 'LUCAS SARAIVA MASCARENHAS', '307718', '2023/2'),
('23103275', 'LUISA LINK BIANCHI', '307718', '2023/2'),
('23103270', 'LUIZA DE MELLO NIZOLI', '307718', '2023/2'),
('23102051', 'MARCELO MIRANDA FERREIRA JUNIOR', '307718', '2023/2'),
('23103265', 'MARCIELE DAMACENA RODRIGUES', '307718', '2023/2'),
('23100560', 'MARIA LUISA SILVA VIEIRA', '307718', '2023/2'),
('23100999', 'MARIANA AMARAL DO AMARAL', '307718', '2023/2'),
('23101809', 'MATHEUS CAVALCANTE DOS SANTOS', '307718', '2023/2'),
('23103278', 'NATALIA LINK BAHR', '307718', '2023/2'),
('23101003', 'OCTAVIO MONTEIRO PRIOTTO', '307718', '2023/2'),
('23100564', 'RAFAELA NUNES RUSSO', '307718', '2023/2'),
('23102999', 'RYAN DIAS CANILHA', '307718', '2023/2'),
('23103242', 'SOPHYA HARTER SILVA', '307718', '2023/2'),
('23103329', 'STEFANY RIBEIRO ROCHA', '307718', '2023/2'),
('23103250', 'THAYANNE BRITO ARAUJO', '307718', '2023/2'),
('22202184', 'VINICIUS ALVES ALMEIDA', '307718', '2023/2'),
('22104430', 'WESLEY SILVA DA SILVA', '307718', '2023/2'),
('23101806', 'ANA LAURA MENDES BRUSAMARELLO', '307728', '2023/2'),
('23103268', 'ANDREI COELHO FETTER', '307728', '2023/2'),
('23103277', 'DIOVANA FONSECA FERREIRA', '307728', '2023/2'),
('23103269', 'EDUARDA RITTES PEREIRA', '307728', '2023/2'),
('23103272', 'ESTELA DE SOUZA WALTZER', '307728', '2023/2'),
('23105145', 'IAN REINHARDT MORAN', '307728', '2023/2'),
('23100395', 'ISABELLE PENELUC ROCHA', '307728', '2023/2'),
('23100994', 'JADER LUIZ PETTER TESSMER FILHO', '307728', '2023/2'),
('23103524', 'JOAO PEDRO PORCIUNCULA OLIVEIRA', '307728', '2023/2'),
('23104529', 'JULIA AMONTE ROTA PEREIRA', '307728', '2023/2'),
('23100396', 'JULIA MARRONI DA ROSA', '307728', '2023/2'),
('23103803', 'LARISSA MESQUITA DE ALMEIDA', '307728', '2023/2'),
('23103276', 'LAURA BANDIERA', '307728', '2023/2'),
('23101797', 'LEONARDO AUGUSTO PEREIRA DAS DORES', '307728', '2023/2'),
('23103273', 'LUANA CRISTINA BRASSOLOTO', '307728', '2023/2'),
('23103271', 'LUANA PERGHER BOTTEGA', '307728', '2023/2'),
('23102236', 'LUCAS GEHRKE ALVES', '307728', '2023/2'),
('23103265', 'MARCIELE DAMACENA RODRIGUES', '307728', '2023/2'),
('23100999', 'MARIANA AMARAL DO AMARAL', '307728', '2023/2'),
('23101809', 'MATHEUS CAVALCANTE DOS SANTOS', '307728', '2023/2'),
('23101003', 'OCTAVIO MONTEIRO PRIOTTO', '307728', '2023/2'),
('23100564', 'RAFAELA NUNES RUSSO', '307728', '2023/2'),
('23103242', 'SOPHYA HARTER SILVA', '307728', '2023/2'),
('23105146', 'ALEXANDRE SANTOS DE OLIVEIRA', '307736', '2023/2'),
('23101806', 'ANA LAURA MENDES BRUSAMARELLO', '307736', '2023/2'),
('23103268', 'ANDREI COELHO FETTER', '307736', '2023/2'),
('17202738', 'ANGEL VITORIA DE AVILA TEIXEIRA', '307736', '2023/2'),
('23103277', 'DIOVANA FONSECA FERREIRA', '307736', '2023/2'),
('23103269', 'EDUARDA RITTES PEREIRA', '307736', '2023/2'),
('23105076', 'EDUARDO DA SILVA MARCELLO', '307736', '2023/2'),
('23103272', 'ESTELA DE SOUZA WALTZER', '307736', '2023/2'),
('23104647', 'FELIPE DE OLIVEIRA CREMA', '307736', '2023/2'),
('23100308', 'GABRIELA DE AVILA COSTA', '307736', '2023/2'),
('23103253', 'GABRIELE DIAS MENEZES', '307736', '2023/2'),
('23103263', 'GABRIEL MASAMI BERNARDES UTIYAMA', '307736', '2023/2'),
('23105144', 'GUILHERME PEREIRA OSSANES', '307736', '2023/2'),
('22202724', 'HELENA HERNANDES MATHEUS', '307736', '2023/2'),
('23105145', 'IAN REINHARDT MORAN', '307736', '2023/2'),
('23100395', 'ISABELLE PENELUC ROCHA', '307736', '2023/2'),
('23100994', 'JADER LUIZ PETTER TESSMER FILHO', '307736', '2023/2'),
('23103524', 'JOAO PEDRO PORCIUNCULA OLIVEIRA', '307736', '2023/2'),
('23104529', 'JULIA AMONTE ROTA PEREIRA', '307736', '2023/2'),
('23100396', 'JULIA MARRONI DA ROSA', '307736', '2023/2'),
('23103803', 'LARISSA MESQUITA DE ALMEIDA', '307736', '2023/2'),
('23103276', 'LAURA BANDIERA', '307736', '2023/2'),
('23103818', 'LAURA LEAL LISBOA', '307736', '2023/2'),
('23101797', 'LEONARDO AUGUSTO PEREIRA DAS DORES', '307736', '2023/2'),
('22102357', 'LORENZO ESCARRONE DE LIMA', '307736', '2023/2'),
('23103273', 'LUANA CRISTINA BRASSOLOTO', '307736', '2023/2'),
('23103271', 'LUANA PERGHER BOTTEGA', '307736', '2023/2'),
('23102236', 'LUCAS GEHRKE ALVES', '307736', '2023/2'),
('23104530', 'LUCAS SARAIVA MASCARENHAS', '307736', '2023/2'),
('23103275', 'LUISA LINK BIANCHI', '307736', '2023/2'),
('23103270', 'LUIZA DE MELLO NIZOLI', '307736', '2023/2'),
('23102051', 'MARCELO MIRANDA FERREIRA JUNIOR', '307736', '2023/2'),
('23103265', 'MARCIELE DAMACENA RODRIGUES', '307736', '2023/2'),
('23104842', 'Maria Loandra Azevedo de Oliveira', '307736', '2023/2'),
('23100560', 'MARIA LUISA SILVA VIEIRA', '307736', '2023/2'),
('23100999', 'MARIANA AMARAL DO AMARAL', '307736', '2023/2'),
('23101809', 'MATHEUS CAVALCANTE DOS SANTOS', '307736', '2023/2'),
('23103278', 'NATALIA LINK BAHR', '307736', '2023/2'),
('23101003', 'OCTAVIO MONTEIRO PRIOTTO', '307736', '2023/2'),
('23105003', 'PAMELA REGINA XAVIER HERNANDORENA GARCIA', '307736', '2023/2'),
('23100564', 'RAFAELA NUNES RUSSO', '307736', '2023/2'),
('23102999', 'RYAN DIAS CANILHA', '307736', '2023/2'),
('23103242', 'SOPHYA HARTER SILVA', '307736', '2023/2'),
('23103329', 'STEFANY RIBEIRO ROCHA', '307736', '2023/2'),
('23103250', 'THAYANNE BRITO ARAUJO', '307736', '2023/2'),
('20102973', 'VITORIA DA CRUZ SILVEIRA', '307736', '2023/2'),
('23101806', 'ANA LAURA MENDES BRUSAMARELLO', '307743', '2023/2'),
('17202738', 'ANGEL VITORIA DE AVILA TEIXEIRA', '307743', '2023/2'),
('23103277', 'DIOVANA FONSECA FERREIRA', '307743', '2023/2'),
('23103269', 'EDUARDA RITTES PEREIRA', '307743', '2023/2'),
('23103272', 'ESTELA DE SOUZA WALTZER', '307743', '2023/2'),
('23103253', 'GABRIELE DIAS MENEZES', '307743', '2023/2'),
('23103263', 'GABRIEL MASAMI BERNARDES UTIYAMA', '307743', '2023/2'),
('23100395', 'ISABELLE PENELUC ROCHA', '307743', '2023/2'),
('23103524', 'JOAO PEDRO PORCIUNCULA OLIVEIRA', '307743', '2023/2'),
('23104529', 'JULIA AMONTE ROTA PEREIRA', '307743', '2023/2'),
('23100396', 'JULIA MARRONI DA ROSA', '307743', '2023/2'),
('23103276', 'LAURA BANDIERA', '307743', '2023/2'),
('23103273', 'LUANA CRISTINA BRASSOLOTO', '307743', '2023/2'),
('23103271', 'LUANA PERGHER BOTTEGA', '307743', '2023/2'),
('23104530', 'LUCAS SARAIVA MASCARENHAS', '307743', '2023/2'),
('23103275', 'LUISA LINK BIANCHI', '307743', '2023/2'),
('23103265', 'MARCIELE DAMACENA RODRIGUES', '307743', '2023/2'),
('23100564', 'RAFAELA NUNES RUSSO', '307743', '2023/2'),
('23102999', 'RYAN DIAS CANILHA', '307743', '2023/2'),
('22202221', 'ALINE DE FARIAS MILECH', '307754', '2023/2'),
('22202223', 'CAMILA OLIVEIRA DE OLIVEIRA', '307754', '2023/2'),
('22202204', 'CAMILLY DA SILVA ZAIONS', '307754', '2023/2'),
('22203369', 'CAROLINA RODRIGUEZ GARRALAGA', '307754', '2023/2'),
('22202186', 'EMELY REGINA FILA', '307754', '2023/2'),
('22103109', 'ISABELLE LOPES BERMUDES', '307754', '2023/2'),
('22202232', 'ISABELLY SANTOS LIMA', '307754', '2023/2'),
('22202205', 'JOSE CLAUDEAN DOS SANTOS TELES', '307754', '2023/2'),
('22104239', 'LUCAS SPECHET COLARES', '307754', '2023/2'),
('22202624', 'LUISA ROLOFF CONCEICAO', '307754', '2023/2'),
('22102360', 'LUIZ EDUARDO HANSEN DA SILVEIRA', '307754', '2023/2'),
('22202201', 'MANUELA DE AZEVEDO ALDRIGUI', '307754', '2023/2'),
('22200101', 'MILEICA CRISTIANE BOBSIN DA SILVA', '307754', '2023/2'),
('22102910', 'NATHALIA MACHADO LINS BRUM', '307754', '2023/2'),
('21202295', 'OTAVIO BORGES MADRUGA DE LIMA ', '307754', '2023/2'),
('22102674', 'PEDRO SÁ DA SILVA SILVEIRA', '307754', '2023/2'),
('22102364', 'VICTORIA JULIAN FERREIRA LIMA', '307754', '2023/2'),
('22202204', 'CAMILLY DA SILVA ZAIONS', '307776', '2023/2'),
('22202232', 'ISABELLY SANTOS LIMA', '307776', '2023/2'),
('22202205', 'JOSE CLAUDEAN DOS SANTOS TELES', '307776', '2023/2'),
('22202624', 'LUISA ROLOFF CONCEICAO', '307776', '2023/2'),
('22103491', 'JASMINY AGUIRRE XAVIER', '307776', '2023/2'),
('22202201', 'MANUELA DE AZEVEDO ALDRIGUI', '307776', '2023/2'),
('22202221', 'ALINE DE FARIAS MILECH', '307787', '2023/2'),
('21201479', 'ALYANDRA BUCHWEITZ MORALES', '307787', '2023/2'),
('20103590', 'ANA CAROLINA MINHO DE SOUZA', '307787', '2023/2'),
('22202225', 'BRUNA RAMOS MACHADO DOS SANTOS', '307787', '2023/2'),
('22202223', 'CAMILA OLIVEIRA DE OLIVEIRA', '307787', '2023/2'),
('22202204', 'CAMILLY DA SILVA ZAIONS', '307787', '2023/2'),
('22203369', 'CAROLINA RODRIGUEZ GARRALAGA', '307787', '2023/2'),
('19200513', 'EDUARDA DAMASCENO ESCALANTE', '307787', '2023/2'),
('22203365', 'EDUARDA RIBEIRO FONSECA', '307787', '2023/2'),
('22202186', 'EMELY REGINA FILA', '307787', '2023/2'),
('22103479', 'ESTHER BATISTA DE MELO ALMEIDA', '307787', '2023/2'),
('22103109', 'ISABELLE LOPES BERMUDES', '307787', '2023/2'),
('22202232', 'ISABELLY SANTOS LIMA', '307787', '2023/2'),
('22103491', 'JASMINY AGUIRRE XAVIER', '307787', '2023/2'),
('19103739', 'JESIELE CONCEICAO CORREA AZZOLIN', '307787', '2023/2'),
('22202205', 'JOSE CLAUDEAN DOS SANTOS TELES', '307787', '2023/2'),
('22202624', 'LUISA ROLOFF CONCEICAO', '307787', '2023/2'),
('22102360', 'LUIZ EDUARDO HANSEN DA SILVEIRA', '307787', '2023/2'),
('22202201', 'MANUELA DE AZEVEDO ALDRIGUI', '307787', '2023/2'),
('22200101', 'MILEICA CRISTIANE BOBSIN DA SILVA', '307787', '2023/2'),
('21201956', 'Patrick Ferreira chagas', '307787', '2023/2'),
('22202213', 'ALINE NACHTIGALL MILBRATH', '307797', '2023/2'),
('22202662', 'BARBARA CANUTO SAMPAIO', '307797', '2023/2'),
('22202225', 'BRUNA RAMOS MACHADO DOS SANTOS', '307797', '2023/2'),
('22202223', 'CAMILA OLIVEIRA DE OLIVEIRA', '307797', '2023/2'),
('21201915', 'CANDIDO FELIPE MENDONCA FERNANDES', '307797', '2023/2'),
('22202289', 'CARLA JULIANE VEGNER', '307797', '2023/2'),
('22203369', 'CAROLINA RODRIGUEZ GARRALAGA', '307797', '2023/2'),
('22203365', 'EDUARDA RIBEIRO FONSECA', '307797', '2023/2'),
('22202186', 'EMELY REGINA FILA', '307797', '2023/2'),
('22103479', 'ESTHER BATISTA DE MELO ALMEIDA', '307797', '2023/2'),
('22103109', 'ISABELLE LOPES BERMUDES', '307797', '2023/2'),
('22103488', 'IZADORA WRUCH CARDOSO', '307797', '2023/2'),
('22103491', 'JASMINY AGUIRRE XAVIER', '307797', '2023/2'),
('22202205', 'JOSE CLAUDEAN DOS SANTOS TELES', '307797', '2023/2'),
('22202237', 'JULIANA LUONGO PELUFO', '307797', '2023/2'),
('22202227', 'JULLIA MELO DE MENEZES', '307797', '2023/2'),
('22203370', 'LAHY TOILLIER DE QUADROS', '307797', '2023/2'),
('22203338', 'LAURA SENNA DIAS', '307797', '2023/2'),
('22102360', 'LUIZ EDUARDO HANSEN DA SILVEIRA', '307797', '2023/2'),
('22202234', 'MARIA EDUARDA INDA GOMES', '307797', '2023/2'),
('22200101', 'MILEICA CRISTIANE BOBSIN DA SILVA', '307797', '2023/2'),
('21201484', 'PIETRA SILVA DA ROSA', '307797', '2023/2'),
('22202505', 'VITORIA ZIMMER LINCK', '307797', '2023/2'),
('22202213', 'ALINE NACHTIGALL MILBRATH', '307801', '2023/2'),
('22202662', 'BARBARA CANUTO SAMPAIO', '307801', '2023/2'),
('22202225', 'BRUNA RAMOS MACHADO DOS SANTOS', '307801', '2023/2'),
('22202223', 'CAMILA OLIVEIRA DE OLIVEIRA', '307801', '2023/2'),
('22202204', 'CAMILLY DA SILVA ZAIONS', '307801', '2023/2'),
('22202289', 'CARLA JULIANE VEGNER', '307801', '2023/2'),
('22203369', 'CAROLINA RODRIGUEZ GARRALAGA', '307801', '2023/2'),
('22203365', 'EDUARDA RIBEIRO FONSECA', '307801', '2023/2'),
('22202186', 'EMELY REGINA FILA', '307801', '2023/2'),
('22202232', 'ISABELLY SANTOS LIMA', '307801', '2023/2'),
('22103488', 'IZADORA WRUCH CARDOSO', '307801', '2023/2'),
('22202205', 'JOSE CLAUDEAN DOS SANTOS TELES', '307801', '2023/2'),
('22202237', 'JULIANA LUONGO PELUFO', '307801', '2023/2'),
('22202227', 'JULLIA MELO DE MENEZES', '307801', '2023/2'),
('22203370', 'LAHY TOILLIER DE QUADROS', '307801', '2023/2'),
('22203338', 'LAURA SENNA DIAS', '307801', '2023/2'),
('22202624', 'LUISA ROLOFF CONCEICAO', '307801', '2023/2'),
('22102360', 'LUIZ EDUARDO HANSEN DA SILVEIRA', '307801', '2023/2'),
('22202201', 'MANUELA DE AZEVEDO ALDRIGUI', '307801', '2023/2'),
('22202234', 'MARIA EDUARDA INDA GOMES', '307801', '2023/2'),
('22200101', 'MILEICA CRISTIANE BOBSIN DA SILVA', '307801', '2023/2'),
('20100629', 'RENATO OLIVEIRA SALDANHA DE ARAUJO', '307801', '2023/2'),
('22202505', 'VITORIA ZIMMER LINCK', '307801', '2023/2'),
('22103330', 'ELIAS JOAQUIM VÖLZ BARBOSA', '308166', '2023/2'),
('22100335', 'GUILHERME BRITO QUEIROZ DA SILVA', '308166', '2023/2'),
('22101638', 'JESSICA DE VARGAS BOSENBECKER', '308166', '2023/2'),
('22103110', 'JORDANA DOS SANTOS DUARTE', '308166', '2023/2'),
('22104354', 'LAURA AZAMBUJA FERNANDES', '308166', '2023/2'),
('21201272', 'LETICIA NUNES FRANCO', '308166', '2023/2'),
('22103481', 'NATALIA COLLARES EBERT HAMM', '308166', '2023/2'),
('22103256', 'PEDRO AFONSO MACHADO NUNES', '308166', '2023/2'),
('21202302', 'RAYANE DOS SANTOS CARDOSO', '308166', '2023/2'),
('22102767', 'SAMARY DA SILVA GASSEN', '308166', '2023/2'),
('22102769', 'VITOR GABRIEL DA SILVA', '308166', '2023/2'),
('22103112', 'YASMIN PENELUC ROCHA', '308166', '2023/2'),
('22103029', 'ANA MARIA DE OLIVEIRA', '308173', '2023/2'),
('22101884', 'ANDERSON DE OLIVEIRA FICKEL', '308173', '2023/2'),
('22103330', 'ELIAS JOAQUIM VÖLZ BARBOSA', '308173', '2023/2'),
('22100335', 'GUILHERME BRITO QUEIROZ DA SILVA', '308173', '2023/2'),
('22101638', 'JESSICA DE VARGAS BOSENBECKER', '308173', '2023/2'),
('22103110', 'JORDANA DOS SANTOS DUARTE', '308173', '2023/2'),
('22104354', 'LAURA AZAMBUJA FERNANDES', '308173', '2023/2'),
('21202179', 'LETICIA DA SILVA RIOS', '308173', '2023/2'),
('22103481', 'NATALIA COLLARES EBERT HAMM', '308173', '2023/2'),
('22103256', 'PEDRO AFONSO MACHADO NUNES', '308173', '2023/2'),
('21202302', 'RAYANE DOS SANTOS CARDOSO', '308173', '2023/2'),
('22102767', 'SAMARY DA SILVA GASSEN', '308173', '2023/2'),
('20103079', 'ALICE E SOUZA HENRIQUES', '308212', '2023/2'),
('20202045', 'ALLAN MARTINS MULLER', '308212', '2023/2'),
('20100601', 'ANA CAROLINA DA SILVA SOUZA', '308212', '2023/2'),
('20201079', 'ANA JULIA TAVARES CORREA', '308212', '2023/2'),
('20103009', 'BARBARA MARTINS FARINHA', '308212', '2023/2'),
('18200101', 'BRENDA MADRUGA AMARAL', '308212', '2023/2'),
('18202055', 'CHARLES CUNHA DO ESPIRITO SANTO', '308212', '2023/2'),
('20201089', 'CRISTINA HELENA MORELLO SARTORI', '308212', '2023/2'),
('20201080', 'DAIANE SILVA SANTOS DA CRUZ', '308212', '2023/2'),
('20201106', 'DAIANI CORREA GONCALVES', '308212', '2023/2'),
('20101522', 'FERNANDA TUERLINCKX DA SILVA BRUNO CORREA', '308212', '2023/2'),
('19100474', 'GABRIEL DA SILVA SOPENA', '308212', '2023/2'),
('20201954', 'GABRIELLE FERREIRA CARDOSO', '308212', '2023/2'),
('20201955', 'GIAN CARDOSO SAMPAIO', '308212', '2023/2'),
('20201047', 'HELLEN MONIQUE DA MOTTA', '308212', '2023/2'),
('19200157', 'JADE HONNICKE DUARTE', '308212', '2023/2'),
('16200953', 'JESSICA DA SILVA RODRIGUES', '308212', '2023/2'),
('20201988', 'JOAO LUIZ DALMASO', '308212', '2023/2'),
('20201956', 'KAILA ANDRESSA DOS SANTOS OLIVEIRA', '308212', '2023/2'),
('20200709', 'KAMILA PAGEL RAMSON', '308212', '2023/2'),
('20105018', 'KAREN MULLER BUBOLZ', '308212', '2023/2'),
('20201171', 'LARA EMMILE EVANGELISTA VALENÇA', '308212', '2023/2'),
('20101175', 'MAIARA OLIVEIRA ORTIZ CORREA', '308212', '2023/2'),
('20100648', 'NATALI PEREIRA CASSAIS', '308212', '2023/2'),
('20200587', 'NATHALIA PEREIRA DA SILVA PORTO', '308212', '2023/2'),
('20104770', 'OTAVIO ISMAR DIAS CAMPOS', '308212', '2023/2'),
('20200513', 'PEDRO DENTICE DA SILVA LEITE', '308212', '2023/2'),
('20201957', 'RAFAELA CHAVES CORREA', '308212', '2023/2'),
('20200514', 'RAFAELA CORREA MARTINS', '308212', '2023/2'),
('20201190', 'RAPHAELA PORCIUNCULA DAS NEVES', '308212', '2023/2'),
('20103131', 'ROBSON RODRIGUES DA SILVA JUNIOR', '308212', '2023/2'),
('20104580', 'Stella Parada Santos Gallo Corrêa', '308212', '2023/2'),
('20201959', 'TAYSSA DE VASCONCELOS PEREIRA', '308212', '2023/2'),
('18103171', 'THAIS MOREIRA MULLET', '308212', '2023/2'),
('18201145', 'THAIS PEDROSO SOARES', '308212', '2023/2'),
('18202052', 'BRUNO FERREIRA DOS SANTOS', '308213', '2023/2'),
('18202055', 'CHARLES CUNHA DO ESPIRITO SANTO', '308213', '2023/2'),
('20201954', 'GABRIELLE FERREIRA CARDOSO', '308213', '2023/2'),
('20201955', 'GIAN CARDOSO SAMPAIO', '308213', '2023/2'),
('18200128', 'GIULIANA MARIA RIBEIRO DA SILVA', '308213', '2023/2'),
('20201047', 'HELLEN MONIQUE DA MOTTA', '308213', '2023/2'),
('16200953', 'JESSICA DA SILVA RODRIGUES', '308213', '2023/2'),
('20201988', 'JOAO LUIZ DALMASO', '308213', '2023/2'),
('20202025', 'JULIANA LIMA DO AMARAL', '308213', '2023/2'),
('20200709', 'KAMILA PAGEL RAMSON', '308213', '2023/2'),
('20104770', 'OTAVIO ISMAR DIAS CAMPOS', '308213', '2023/2'),
('20200514', 'RAFAELA CORREA MARTINS', '308213', '2023/2'),
('20201190', 'RAPHAELA PORCIUNCULA DAS NEVES', '308213', '2023/2'),
('20103131', 'ROBSON RODRIGUES DA SILVA JUNIOR', '308213', '2023/2'),
('20201959', 'TAYSSA DE VASCONCELOS PEREIRA', '308213', '2023/2'),
('18201145', 'THAIS PEDROSO SOARES', '308213', '2023/2'),
('20200511', 'ALDERLAN FRANCISCO FERREIRA DOS SANTOS', '308215', '2023/2'),
('20202045', 'ALLAN MARTINS MULLER', '308215', '2023/2'),
('20100601', 'ANA CAROLINA DA SILVA SOUZA', '308215', '2023/2'),
('20201079', 'ANA JULIA TAVARES CORREA', '308215', '2023/2'),
('20103009', 'BARBARA MARTINS FARINHA', '308215', '2023/2'),
('20202078', 'BETINA DUTRA LIMA', '308215', '2023/2'),
('18200101', 'BRENDA MADRUGA AMARAL', '308215', '2023/2'),
('20200512', 'BRENO LOPES NUNES', '308215', '2023/2'),
('18202055', 'CHARLES CUNHA DO ESPIRITO SANTO', '308215', '2023/2'),
('20201089', 'CRISTINA HELENA MORELLO SARTORI', '308215', '2023/2'),
('20201080', 'DAIANE SILVA SANTOS DA CRUZ', '308215', '2023/2'),
('20201106', 'DAIANI CORREA GONCALVES', '308215', '2023/2'),
('20202091', 'EZEQUIEL AZEVEDO SCHEMMFELNNIG', '308215', '2023/2'),
('20201954', 'GABRIELLE FERREIRA CARDOSO', '308215', '2023/2'),
('20201955', 'GIAN CARDOSO SAMPAIO', '308215', '2023/2'),
('18200128', 'GIULIANA MARIA RIBEIRO DA SILVA', '308215', '2023/2'),
('20201047', 'HELLEN MONIQUE DA MOTTA', '308215', '2023/2'),
('19200157', 'JADE HONNICKE DUARTE', '308215', '2023/2'),
('16200953', 'JESSICA DA SILVA RODRIGUES', '308215', '2023/2'),
('20201988', 'JOAO LUIZ DALMASO', '308215', '2023/2'),
('20202025', 'JULIANA LIMA DO AMARAL', '308215', '2023/2'),
('20201038', 'JULIA SILVEIRA LONGARAY', '308215', '2023/2'),
('20200709', 'KAMILA PAGEL RAMSON', '308215', '2023/2'),
('20201956', 'KAILA ANDRESSA DOS SANTOS OLIVEIRA', '308215', '2023/2'),
('20100757', 'ANTHONY MARCOWICH ROCHA', '308376', '2023/2'),
('18201145', 'THAIS PEDROSO SOARES', '308215', '2023/2'),
('20200511', 'ALDERLAN FRANCISCO FERREIRA DOS SANTOS', '308376', '2023/2'),
('20201959', 'TAYSSA DE VASCONCELOS PEREIRA', '308215', '2023/2'),
('20201190', 'RAPHAELA PORCIUNCULA DAS NEVES', '308215', '2023/2'),
('20201957', 'RAFAELA CHAVES CORREA', '308215', '2023/2'),
('18104926', 'ANDRESSA RODRIGUES MACHADO', '308376', '2023/2'),
('20200513', 'PEDRO DENTICE DA SILVA LEITE', '308215', '2023/2'),
('20104580', 'Stella Parada Santos Gallo Corrêa', '308215', '2023/2'),
('20104770', 'OTAVIO ISMAR DIAS CAMPOS', '308215', '2023/2'),
('20200587', 'NATHALIA PEREIRA DA SILVA PORTO', '308215', '2023/2'),
('20103131', 'ROBSON RODRIGUES DA SILVA JUNIOR', '308215', '2023/2'),
('20200514', 'RAFAELA CORREA MARTINS', '308215', '2023/2'),
('20101175', 'MAIARA OLIVEIRA ORTIZ CORREA', '308215', '2023/2'),
('20201171', 'LARA EMMILE EVANGELISTA VALENÇA', '308215', '2023/2'),
('17200781', 'JANAINA DA SILVA SILVEIRA', '308376', '2023/2'),
('20102917', 'GUSTAVO SILVA FRANCISCO', '308376', '2023/2'),
('20105241', 'EDUARDA TREPTOW GOUVEA', '308376', '2023/2'),
('20202091', 'EZEQUIEL AZEVEDO SCHEMMFELNNIG', '308376', '2023/2'),
('20202078', 'BETINA DUTRA LIMA', '308376', '2023/2'),
('20101684', 'EDUARDO MAGALHAES DIAS GUIDO BERNARDES', '308376', '2023/2'),
('20103643', 'DIULLIA SORIA CAUMO', '308376', '2023/2'),
('20102005', 'CRISTIANE BERWALDT GOWERT', '308376', '2023/2'),
('20103586', 'JANDRYCE SILVEIRA DE SOUZA', '308376', '2023/2'),
('20100728', 'JULIA DA SILVEIRA LIMA', '308376', '2023/2'),
('20103575', 'JULIANA FLORES MANKE', '308376', '2023/2'),
('20103546', 'JULIANA THUROW KRUGER', '308376', '2023/2'),
('20201038', 'JULIA SILVEIRA LONGARAY', '308376', '2023/2'),
('20104756', 'LAIRA FEIJÓ RODRIGUES', '308376', '2023/2'),
('20102959', 'LAIZA SALAZAR WINK', '308376', '2023/2'),
('20103001', 'LUIZA GIODA NORONHA', '308376', '2023/2'),
('20100574', 'LUIZA HIARA DE MORAES KOLTON', '308376', '2023/2'),
('20105153', 'LUIZ CARLOS SPECHET PRADO', '308376', '2023/2'),
('20101628', 'MARIA EDUARDA BARBIERI AZAMBUJA', '308376', '2023/2'),
('20102946', 'NATHALIA LEONARSKI CARVALHO', '308376', '2023/2'),
('18202280', 'NICOLAS CAMPOS RODEGHIERO', '308376', '2023/2'),
('20100629', 'RENATO OLIVEIRA SALDANHA DE ARAUJO', '308376', '2023/2'),
('20200511', 'ALDERLAN FRANCISCO FERREIRA DOS SANTOS', '308379', '2023/2'),
('18104926', 'ANDRESSA RODRIGUES MACHADO', '308379', '2023/2'),
('20100757', 'ANTHONY MARCOWICH ROCHA', '308379', '2023/2'),
('15200280', 'BERNARDO FERREIRA MENDONÇA', '308379', '2023/2'),
('20202078', 'BETINA DUTRA LIMA', '308379', '2023/2'),
('20102005', 'CRISTIANE BERWALDT GOWERT', '308379', '2023/2'),
('20103643', 'DIULLIA SORIA CAUMO', '308379', '2023/2'),
('20105241', 'EDUARDA TREPTOW GOUVEA', '308379', '2023/2'),
('20101684', 'EDUARDO MAGALHAES DIAS GUIDO BERNARDES', '308379', '2023/2'),
('20202091', 'EZEQUIEL AZEVEDO SCHEMMFELNNIG', '308379', '2023/2'),
('20102917', 'GUSTAVO SILVA FRANCISCO', '308379', '2023/2'),
('20103586', 'JANDRYCE SILVEIRA DE SOUZA', '308379', '2023/2'),
('20100728', 'JULIA DA SILVEIRA LIMA', '308379', '2023/2'),
('20103575', 'JULIANA FLORES MANKE', '308379', '2023/2'),
('20201038', 'JULIA SILVEIRA LONGARAY', '308379', '2023/2'),
('20104756', 'LAIRA FEIJÓ RODRIGUES', '308379', '2023/2'),
('20102959', 'LAIZA SALAZAR WINK', '308379', '2023/2'),
('20103001', 'LUIZA GIODA NORONHA', '308379', '2023/2'),
('20100574', 'LUIZA HIARA DE MORAES KOLTON', '308379', '2023/2'),
('20105153', 'LUIZ CARLOS SPECHET PRADO', '308379', '2023/2'),
('20102946', 'NATHALIA LEONARSKI CARVALHO', '308379', '2023/2'),
('20101628', 'MARIA EDUARDA BARBIERI AZAMBUJA', '308379', '2023/2'),
('20100629', 'RENATO OLIVEIRA SALDANHA DE ARAUJO', '308379', '2023/2'),
('20103079', 'ALICE E SOUZA HENRIQUES', '308382', '2023/2'),
('20100757', 'ANTHONY MARCOWICH ROCHA', '308382', '2023/2'),
('20102005', 'CRISTIANE BERWALDT GOWERT', '308382', '2023/2'),
('19201007', 'DIANE PEREIRA ROSA', '308382', '2023/2'),
('20103643', 'DIULLIA SORIA CAUMO', '308382', '2023/2'),
('20105241', 'EDUARDA TREPTOW GOUVEA', '308382', '2023/2'),
('20101684', 'EDUARDO MAGALHAES DIAS GUIDO BERNARDES', '308382', '2023/2'),
('20101522', 'FERNANDA TUERLINCKX DA SILVA BRUNO CORREA', '308382', '2023/2'),
('20102917', 'GUSTAVO SILVA FRANCISCO', '308382', '2023/2'),
('20103586', 'JANDRYCE SILVEIRA DE SOUZA', '308382', '2023/2'),
('20100728', 'JULIA DA SILVEIRA LIMA', '308382', '2023/2'),
('20103575', 'JULIANA FLORES MANKE', '308382', '2023/2'),
('20103546', 'JULIANA THUROW KRUGER', '308382', '2023/2'),
('20105018', 'KAREN MULLER BUBOLZ', '308382', '2023/2'),
('20104756', 'LAIRA FEIJÓ RODRIGUES', '308382', '2023/2'),
('20102959', 'LAIZA SALAZAR WINK', '308382', '2023/2'),
('20103001', 'LUIZA GIODA NORONHA', '308382', '2023/2'),
('20100574', 'LUIZA HIARA DE MORAES KOLTON', '308382', '2023/2'),
('20105153', 'LUIZ CARLOS SPECHET PRADO', '308382', '2023/2'),
('20101628', 'MARIA EDUARDA BARBIERI AZAMBUJA', '308382', '2023/2'),
('20100648', 'NATALI PEREIRA CASSAIS', '308382', '2023/2'),
('20102946', 'NATHALIA LEONARSKI CARVALHO', '308382', '2023/2'),
('20100629', 'RENATO OLIVEIRA SALDANHA DE ARAUJO', '308382', '2023/2'),
('19200672', 'DYULIA GAUTERIO DE LEMOS', '308383', '2023/2'),
('19201427', 'FRANCIELEN BRAGA TEIXEIRA', '308383', '2023/2'),
('19200801', 'FRANCIELLI FERNANDEZ GARCIA', '308383', '2023/2'),
('19200172', 'JANE BEATRIZ MENDES OLIVEIRA', '308383', '2023/2'),
('18103467', 'JANUARIO TEIXEIRA DA SILVEIRA', '308383', '2023/2'),
('19200866', 'JORDANA DE PAULA DA SILVA', '308383', '2023/2'),
('19200784', 'JOSIANE DIAS PINZ', '308383', '2023/2'),
('19200177', 'JULIA BICCA NOGUEZ MARTINS', '308383', '2023/2'),
('19201409', 'JULIA BORTOWSKI DE MEDEIROS', '308383', '2023/2'),
('19200625', 'JULIANA DOSSO', '308383', '2023/2'),
('19200198', 'JULY IASMIM DA SILVA BARBOSA', '308383', '2023/2'),
('15201769', 'LÉA CRISTINA CHAVES RIBEIRO', '308383', '2023/2'),
('18101209', 'MANOEL BOIJINK SOARES', '308383', '2023/2'),
('19201877', 'MICHELE NEUMANN', '308383', '2023/2'),
('19200872', 'PAOLA PEREIRA REIZNAUTT', '308383', '2023/2'),
('19202075', 'RAFAELA DIAS COUTINHO', '308383', '2023/2'),
('19201412', 'VINICIUS COLOMBY RUIZ', '308383', '2023/2'),
('15200280', 'BERNARDO FERREIRA MENDONÇA', '308386', '2023/2'),
('19200672', 'DYULIA GAUTERIO DE LEMOS', '308386', '2023/2'),
('17200428', 'ENZO LIGORIO CARPENEDO', '308386', '2023/2'),
('19201427', 'FRANCIELEN BRAGA TEIXEIRA', '308386', '2023/2'),
('19200801', 'FRANCIELLI FERNANDEZ GARCIA', '308386', '2023/2'),
('19100474', 'GABRIEL DA SILVA SOPENA', '308386', '2023/2'),
('16201165', 'GUILHERME RÖDEL SILVEIRA', '308386', '2023/2'),
('17201346', 'HENRIQUE DA SILVA RODRIGUES LOURENCON', '308386', '2023/2'),
('19200157', 'JADE HONNICKE DUARTE', '308386', '2023/2'),
('19200172', 'JANE BEATRIZ MENDES OLIVEIRA', '308386', '2023/2'),
('18103467', 'JANUARIO TEIXEIRA DA SILVEIRA', '308386', '2023/2'),
('19200866', 'JORDANA DE PAULA DA SILVA', '308386', '2023/2'),
('19200784', 'JOSIANE DIAS PINZ', '308386', '2023/2'),
('19200177', 'JULIA BICCA NOGUEZ MARTINS', '308386', '2023/2'),
('19200625', 'JULIANA DOSSO', '308386', '2023/2'),
('19201409', 'JULIA BORTOWSKI DE MEDEIROS', '308386', '2023/2'),
('19200198', 'JULY IASMIM DA SILVA BARBOSA', '308386', '2023/2'),
('18101209', 'MANOEL BOIJINK SOARES', '308386', '2023/2'),
('19201877', 'MICHELE NEUMANN', '308386', '2023/2'),
('19200872', 'PAOLA PEREIRA REIZNAUTT', '308386', '2023/2'),
('19202075', 'RAFAELA DIAS COUTINHO', '308386', '2023/2'),
('19102268', 'ARTHUR PRETTO MALDANER', '308403', '2023/2'),
('19201412', 'VINICIUS COLOMBY RUIZ', '308386', '2023/2'),
('19104799', 'CASSIANE SOUZA FOLY DO NASCIMENTO', '308403', '2023/2'),
('17103708', 'ANA PAULA SANTANA GARCIA', '308403', '2023/2'),
('19100526', 'ANDERSON ROTUNDO PEREZ', '308403', '2023/2'),
('16200568', 'ANGELO CARARO ZANINI', '308403', '2023/2'),
('19100545', 'BRUNA ZEMBRUSKI GOMES', '308403', '2023/2'),
('19103423', 'THALIA ROSA DO NASCIMENTO', '308403', '2023/2'),
('19100431', 'MARINA INES ROMANO SANTIN', '308403', '2023/2'),
('15100197', 'MARIANE DIAS', '308403', '2023/2'),
('19100463', 'LUIS HENRIQUE BAPTISTA REHBEIN', '308403', '2023/2'),
('19103404', 'RENATA LUISA SEYFFERT CRUGER', '308403', '2023/2'),
('19102617', 'MARIA EDUARDA ARMINDO DE SOUZA', '308403', '2023/2'),
('19104346', 'BRUNO MARTINS DA SILVA', '308403', '2023/2'),
('18201741', 'FERNANDA PEDROZO DAS NEVES', '308403', '2023/2'),
('19103054', 'FELIPE BERWALDT ISLABAO', '308403', '2023/2'),
('19101706', 'FELIPE AUGUSTO KRAVCHENKO CARDOSO', '308403', '2023/2'),
('19103039', 'RAFAEL MARTINS DOS SANTOS', '308403', '2023/2'),
('19105179', 'FELIPE DOS SANTOS COSTA', '308403', '2023/2'),
('15102080', 'IZABEL GONCALVES DE SOUZA', '308403', '2023/2'),
('16201165', 'GUILHERME RÖDEL SILVEIRA', '308403', '2023/2'),
('19103055', 'KAIENA PALOMA SCHIERHOLT', '308403', '2023/2'),
('19103050', 'JULIA PEREIRA DA COSTA', '308403', '2023/2'),
('19103744', 'WILLIAM TERRA NEVES', '308403', '2023/2'),
('19103067', 'KAROLINA REIS DA ROSA', '308403', '2023/2'),
('19100476', 'KELEM SOARES KONFLANZ', '308403', '2023/2'),
('19103188', 'LARISSA WULFF OLIVEIRA', '308403', '2023/2'),
('19100475', 'VICTOR CARVALHO MORAES', '308403', '2023/2'),
('19102880', 'VICTORIA KETLEN MOREIRA', '308403', '2023/2'),
('19100521', 'MARIA EDUARDA PERES SCHMALFUSS', '308403', '2023/2'),
('14200737', 'RUBENS TADEU MARTINS JUNIOR', '308403', '2023/2'),
('15201769', 'LÉA CRISTINA CHAVES RIBEIRO', '308403', '2023/2'),
('19103407', 'PATRICK ARINOS DIAS FARIAS', '308403', '2023/2'),
('16201301', 'LEONARDO COSTA E SILVA', '308403', '2023/2'),
('18102598', 'LIVIA SILVEIRA BARCELLOS', '308403', '2023/2'),
('19102280', 'MARIA EDUARDA DALMEIDA PAES', '308403', '2023/2'),
('19103166', 'MARINA NUNES DE FARIA CORREA', '308403', '2023/2'),
('19103533', 'NATALIA BLANK PINZ', '308403', '2023/2'),
('19104346', 'BRUNO MARTINS DA SILVA', '308414', '2023/2'),
('19103039', 'RAFAEL MARTINS DOS SANTOS', '308414', '2023/2'),
('19103055', 'KAIENA PALOMA SCHIERHOLT', '308414', '2023/2'),
('18102598', 'LIVIA SILVEIRA BARCELLOS', '308414', '2023/2'),
('19103050', 'JULIA PEREIRA DA COSTA', '308414', '2023/2'),
('19103533', 'NATALIA BLANK PINZ', '308414', '2023/2'),
('19103166', 'MARINA NUNES DE FARIA CORREA', '308414', '2023/2'),
('19103404', 'RENATA LUISA SEYFFERT CRUGER', '308414', '2023/2'),
('16200568', 'ANGELO CARARO ZANINI', '308434', '2023/2'),
('19102268', 'ARTHUR PRETTO MALDANER', '308434', '2023/2'),
('19104346', 'BRUNO MARTINS DA SILVA', '308434', '2023/2'),
('19101706', 'FELIPE AUGUSTO KRAVCHENKO CARDOSO', '308434', '2023/2'),
('18201741', 'FERNANDA PEDROZO DAS NEVES', '308434', '2023/2'),
('19103050', 'JULIA PEREIRA DA COSTA', '308434', '2023/2'),
('19103055', 'KAIENA PALOMA SCHIERHOLT', '308434', '2023/2'),
('19103188', 'LARISSA WULFF OLIVEIRA', '308434', '2023/2'),
('18102598', 'LIVIA SILVEIRA BARCELLOS', '308434', '2023/2'),
('15100197', 'MARIANE DIAS', '308434', '2023/2'),
('19103166', 'MARINA NUNES DE FARIA CORREA', '308434', '2023/2'),
('19103533', 'NATALIA BLANK PINZ', '308434', '2023/2'),
('19103039', 'RAFAEL MARTINS DOS SANTOS', '308434', '2023/2'),
('19103404', 'RENATA LUISA SEYFFERT CRUGER', '308434', '2023/2'),
('19103423', 'THALIA ROSA DO NASCIMENTO', '308434', '2023/2'),
('19100475', 'VICTOR CARVALHO MORAES', '308434', '2023/2'),
('19102268', 'ARTHUR PRETTO MALDANER', '308454', '2023/2'),
('19104346', 'BRUNO MARTINS DA SILVA', '308454', '2023/2'),
('19101706', 'FELIPE AUGUSTO KRAVCHENKO CARDOSO', '308454', '2023/2'),
('19103050', 'JULIA PEREIRA DA COSTA', '308454', '2023/2'),
('19103055', 'KAIENA PALOMA SCHIERHOLT', '308454', '2023/2'),
('19103188', 'LARISSA WULFF OLIVEIRA', '308454', '2023/2'),
('18102598', 'LIVIA SILVEIRA BARCELLOS', '308454', '2023/2'),
('19103166', 'MARINA NUNES DE FARIA CORREA', '308454', '2023/2'),
('19103533', 'NATALIA BLANK PINZ', '308454', '2023/2'),
('19103039', 'RAFAEL MARTINS DOS SANTOS', '308454', '2023/2'),
('19103404', 'RENATA LUISA SEYFFERT CRUGER', '308454', '2023/2'),
('19103423', 'THALIA ROSA DO NASCIMENTO', '308454', '2023/2'),
('19100475', 'VICTOR CARVALHO MORAES', '308454', '2023/2'),
('18201752', 'ANDREZA MONTELLI DO ROSARIO', '309145', '2023/2'),
('18201183', 'BRUNA MACHADO FERNANDES', '309145', '2023/2'),
('18200013', 'DAIMON DE OLIVEIRA MARTINS', '309145', '2023/2'),
('18200951', 'DIEGO HENRIQUE DE SOUSA', '309145', '2023/2'),
('18200821', 'ERIKA LIMA FONSECA', '309145', '2023/2'),
('18102655', 'FELIPE BARBOSA PEREIRA', '309145', '2023/2'),
('18200056', 'FERNANDO ANTONIO VARGAS JUNIOR', '309145', '2023/2'),
('18200853', 'GUILHERME SCHEEREN FIGUEIREDO', '309145', '2023/2'),
('18200866', 'HENRIQUE PACHECO PERES', '309145', '2023/2'),
('18202279', 'JULIA SILVA GOMES DE ARAUJO', '309145', '2023/2'),
('18200747', 'MATEUS GAYA DOS SANTOS', '309145', '2023/2'),
('18200857', 'MATHEUS POLESSO PATIAS', '309145', '2023/2'),
('18201752', 'ANDREZA MONTELLI DO ROSARIO', '309155', '2023/2'),
('18201183', 'BRUNA MACHADO FERNANDES', '309155', '2023/2'),
('18200013', 'DAIMON DE OLIVEIRA MARTINS', '309155', '2023/2'),
('18200951', 'DIEGO HENRIQUE DE SOUSA', '309155', '2023/2'),
('18102655', 'FELIPE BARBOSA PEREIRA', '309155', '2023/2'),
('18200821', 'ERIKA LIMA FONSECA', '309155', '2023/2'),
('18200056', 'FERNANDO ANTONIO VARGAS JUNIOR', '309155', '2023/2'),
('18102516', 'GIOVANNA BERTOLLO TAMBARA', '309155', '2023/2'),
('18200853', 'GUILHERME SCHEEREN FIGUEIREDO', '309155', '2023/2'),
('18200866', 'HENRIQUE PACHECO PERES', '309155', '2023/2'),
('15102080', 'IZABEL GONCALVES DE SOUZA', '309155', '2023/2'),
('18202279', 'JULIA SILVA GOMES DE ARAUJO', '309155', '2023/2'),
('16201301', 'LEONARDO COSTA E SILVA', '309155', '2023/2'),
('18200747', 'MATEUS GAYA DOS SANTOS', '309155', '2023/2'),
('18200857', 'MATHEUS POLESSO PATIAS', '309155', '2023/2'),
('14200737', 'RUBENS TADEU MARTINS JUNIOR', '309155', '2023/2'),
('18102814', 'ALICE EBERSOL AVILA', '309191', '2023/2'),
('17201564', 'AMANDA DA SILVA OLIVEIRA', '309191', '2023/2'),
('18100654', 'AMANDA DOS SANTOS FIGUEIREDO', '309191', '2023/2'),
('18101299', 'ANA JULIA LABRES', '309191', '2023/2'),
('17200659', 'BIANCA TELES DA COSTA', '309191', '2023/2'),
('13200160', 'CAMILA SIMONAGGIO', '309191', '2023/2'),
('18101179', 'CINTHIA FONSECA ARAUJO', '309191', '2023/2'),
('16103110', 'CRISTOPHER DAVI GRIEP', '309191', '2023/2'),
('18102727', 'DANIEL HUTTNER BORK', '309191', '2023/2'),
('18101250', 'EDUARDA PERAZZO BRAVO DE SOUZA', '309191', '2023/2'),
('18103930', 'FERNANDA FONTES DE FREITAS', '309191', '2023/2'),
('16201006', 'FERNANDA MENDES OLIVEIRA', '309191', '2023/2'),
('18103459', 'GABRIELA PEGLOW CRESPO', '309191', '2023/2'),
('18102739', 'GABRIELA SCHNEID RIOS', '309191', '2023/2'),
('18101206', 'GABRIEL LIMA BRAZ', '309191', '2023/2'),
('18102516', 'GIOVANNA BERTOLLO TAMBARA', '309191', '2023/2'),
('18105072', 'ISABELLA DALBEM GIANECHINI', '309191', '2023/2'),
('15200888', 'IVANA AZEREDO DA COSTA', '309191', '2023/2'),
('17101788', 'JOAO ARZELINDO PEREIRA NETO', '309191', '2023/2'),
('18101181', 'JULIA SEDREZ DE SOUZA', '309191', '2023/2'),
('18102596', 'LARISSA DE OLIVEIRA PRIMO ALVES', '309191', '2023/2'),
('18102810', 'LARISSA VIANA DE OLIVEIRA', '309191', '2023/2'),
('15201717', 'LUAN DA FONSECA GONCALVES', '309191', '2023/2'),
('16200954', 'LUCAS NATHAN NASCIMENTO DA LUZ', '309191', '2023/2'),
('17200446', 'LUCIANO MONTEZZANO RIOS BACCHIERI', '309191', '2023/2'),
('18102654', 'LUIZA FELIX FONSECA', '309191', '2023/2'),
('18105023', 'MICHAELLY RICARDO VIEIRA', '309191', '2023/2'),
('18101407', 'NATANA BIERHALS OTTO', '309191', '2023/2'),
('18103162', 'NATHALIA MADUREIRA AREJANO', '309191', '2023/2'),
('18101276', 'PEDRO SCHWARTZ KALIL PEREIRA', '309191', '2023/2'),
('15100785', 'RAFAELA FAVRETTO MORAES', '309191', '2023/2'),
('18100871', 'VICTORIA VACARI DE BRUM', '309191', '2023/2'),
('18102881', 'VINICIUS PEREIRA BALONEQUE', '309191', '2023/2'),
('18100654', 'AMANDA DOS SANTOS FIGUEIREDO', '309199', '2023/2'),
('18101299', 'ANA JULIA LABRES', '309199', '2023/2'),
('18101179', 'CINTHIA FONSECA ARAUJO', '309199', '2023/2'),
('18102727', 'DANIEL HUTTNER BORK', '309199', '2023/2'),
('18101250', 'EDUARDA PERAZZO BRAVO DE SOUZA', '309199', '2023/2'),
('18103930', 'FERNANDA FONTES DE FREITAS', '309199', '2023/2'),
('18103459', 'GABRIELA PEGLOW CRESPO', '309199', '2023/2'),
('18105076', 'VAGNER MORALES MACHADO JUNIOR', '309191', '2023/2'),
('18102739', 'GABRIELA SCHNEID RIOS', '309199', '2023/2'),
('18101206', 'GABRIEL LIMA BRAZ', '309199', '2023/2'),
('18105072', 'ISABELLA DALBEM GIANECHINI', '309199', '2023/2'),
('18101181', 'JULIA SEDREZ DE SOUZA', '309199', '2023/2'),
('18102810', 'LARISSA VIANA DE OLIVEIRA', '309199', '2023/2'),
('18102654', 'LUIZA FELIX FONSECA', '309199', '2023/2'),
('18103162', 'NATHALIA MADUREIRA AREJANO', '309199', '2023/2'),
('17200488', 'ROSIANE PEREIRA DE OLIVEIRA', '309199', '2023/2'),
('18100871', 'VICTORIA VACARI DE BRUM', '309199', '2023/2'),
('18102881', 'VINICIUS PEREIRA BALONEQUE', '309199', '2023/2'),
('18105076', 'VAGNER MORALES MACHADO JUNIOR', '309199', '2023/2'),
('21201914', 'AUGUSTO BRIZOLA NACHTIGALL', '310705', '2023/2'),
('21201480', 'BRUNA MADRUGA TABELIAO', '310705', '2023/2'),
('21201520', 'BRUNO PIETRO TORRES', '310705', '2023/2'),
('21202296', 'Cauane Aires de Souza', '310705', '2023/2'),
('21202303', 'DANIELA FARIAS ALDADO ', '310705', '2023/2'),
('21201482', 'Inajara Marcela Grenzel Dal Molin', '310705', '2023/2'),
('21201053', 'JULIA RAMALHO DIAS', '310705', '2023/2'),
('21200594', 'JULIA VITORIA LOPES MOTA', '310705', '2023/2'),
('21201916', 'LARISSA SCHWARTZ RADATZ', '310705', '2023/2'),
('21201483', 'MARIA MANOELA DE MOURA RUAS', '310705', '2023/2'),
('21201312', 'MURILO DE ARAUJO ALVES', '310705', '2023/2'),
('23200450', 'MARCELO ANTONIO SARTURI', '307684', '2023/2'),
('23200431', 'LUCAS DE CRISTO VIANA', '307684', '2023/2'),
('23200442', 'LUIS GUSTAVO ULGUIM TAVARES', '307684', '2023/2'),
('23201269', 'MARIA EDUARDA HERNANDES GARCIA', '307684', '2023/2'),
('23200428', 'MARIA SOFHIA COSTA DE OLIVEIRA', '307684', '2023/2'),
('23200441', 'MARIA LUIZA DOS SANTOS LIMA', '307684', '2023/2'),
('23201488', 'NICOLY SOUZA RAMOS', '307684', '2023/2'),
('23200454', 'RAFAELA GONCALVES TORRES', '307684', '2023/2'),
('23200435', 'MANUELA DE MELLO GARRE', '307684', '2023/2'),
('23200459', 'MATHEUS BARRETO MULLER', '307684', '2023/2'),
('23201187', 'LEONARDO SOUZA PERCHIN', '307684', '2023/2'),
('22102357', 'LORENZO ESCARRONE DE LIMA', '307684', '2023/2'),
('23201465', 'LETICIA ESTOL DIAS DE OLIVEIRA', '307684', '2023/2'),
('23200448', 'KAILANY MIKAELA DE OLIVEIRA', '307684', '2023/2'),
('20103687', 'Diogo Póky Jacinto', '307684', '2023/2'),
('21201367', 'PEDRO BRUM DE ARMAS', '310705', '2023/2'),
('23200447', 'RAPHAEL IANAGONI NUNES', '307684', '2023/2'),
('23200424', 'RHAYANY FERREIRA SANES', '307684', '2023/2'),
('23200423', 'Tainá Belarmino', '307684', '2023/2'),
('23201489', 'VANESSA SCHILLER DRAWANZ', '307684', '2023/2'),
('23201490', 'YASMIN PAULA DOS SANTOS', '307684', '2023/2'),
('23201491', 'YASMIN RODRIGUES DE AGUIAR', '307684', '2023/2'),
('22102994', 'GUILHERME TEIXEIRA DA SILVEIRA', '307689', '2023/2'),
('23200449', 'JOAO GABRIEL MUNHOZ PEREIRA', '307689', '2023/2'),
('23200448', 'KAILANY MIKAELA DE OLIVEIRA', '307689', '2023/2'),
('23201187', 'LEONARDO SOUZA PERCHIN', '307689', '2023/2'),
('23201465', 'LETICIA ESTOL DIAS DE OLIVEIRA', '307689', '2023/2'),
('22102357', 'LORENZO ESCARRONE DE LIMA', '307689', '2023/2'),
('23200431', 'LUCAS DE CRISTO VIANA', '307689', '2023/2'),
('23200442', 'LUIS GUSTAVO ULGUIM TAVARES', '307689', '2023/2'),
('23200435', 'MANUELA DE MELLO GARRE', '307689', '2023/2'),
('23200450', 'MARCELO ANTONIO SARTURI', '307689', '2023/2'),
('23201269', 'MARIA EDUARDA HERNANDES GARCIA', '307689', '2023/2'),
('23200441', 'MARIA LUIZA DOS SANTOS LIMA', '307689', '2023/2'),
('23200428', 'MARIA SOFHIA COSTA DE OLIVEIRA', '307689', '2023/2'),
('23200459', 'MATHEUS BARRETO MULLER', '307689', '2023/2'),
('23201488', 'NICOLY SOUZA RAMOS', '307689', '2023/2'),
('23200454', 'RAFAELA GONCALVES TORRES', '307689', '2023/2'),
('23200447', 'RAPHAEL IANAGONI NUNES', '307689', '2023/2'),
('23200424', 'RHAYANY FERREIRA SANES', '307689', '2023/2'),
('23200423', 'Tainá Belarmino', '307689', '2023/2'),
('22202727', 'Tatiana Serutina Lopes da Silva', '307689', '2023/2'),
('23201489', 'VANESSA SCHILLER DRAWANZ', '307689', '2023/2'),
('20102973', 'VITORIA DA CRUZ SILVEIRA', '307689', '2023/2');
INSERT INTO `relação_alunos_disciplinas` (`matricula`, `nome`, `turma_id`, `periodo`) VALUES
('23200458', 'VITOR JAKUBOWSKI ZORATTO', '307689', '2023/2'),
('23201490', 'YASMIN PAULA DOS SANTOS', '307689', '2023/2'),
('23201491', 'YASMIN RODRIGUES DE AGUIAR', '307689', '2023/2'),
('22203364', 'ANA CLARA FAZENDA ARAUJO', '307715', '2023/2'),
('23103268', 'ANDREI COELHO FETTER', '307715', '2023/2'),
('22202679', 'CAMILA SANTIN DA SILVA', '307715', '2023/2'),
('23105076', 'EDUARDO DA SILVA MARCELLO', '307715', '2023/2'),
('23104647', 'FELIPE DE OLIVEIRA CREMA', '307715', '2023/2'),
('23105144', 'GUILHERME PEREIRA OSSANES', '307715', '2023/2'),
('22202230', 'HELENA CAETANO MORALE DE OLIVEIRA', '307715', '2023/2'),
('22104446', 'KAUANNA DIAS PENNY', '307715', '2023/2'),
('23103818', 'LAURA LEAL LISBOA', '307715', '2023/2'),
('23101797', 'LEONARDO AUGUSTO PEREIRA DAS DORES', '307715', '2023/2'),
('23102236', 'LUCAS GEHRKE ALVES', '307715', '2023/2'),
('23103275', 'LUISA LINK BIANCHI', '307715', '2023/2'),
('23103270', 'LUIZA DE MELLO NIZOLI', '307715', '2023/2'),
('23102051', 'MARCELO MIRANDA FERREIRA JUNIOR', '307715', '2023/2'),
('23100560', 'MARIA LUISA SILVA VIEIRA', '307715', '2023/2'),
('23100999', 'MARIANA AMARAL DO AMARAL', '307715', '2023/2'),
('23103278', 'NATALIA LINK BAHR', '307715', '2023/2'),
('23101003', 'OCTAVIO MONTEIRO PRIOTTO', '307715', '2023/2'),
('23102999', 'RYAN DIAS CANILHA', '307715', '2023/2'),
('23103242', 'SOPHYA HARTER SILVA', '307715', '2023/2'),
('23103329', 'STEFANY RIBEIRO ROCHA', '307715', '2023/2'),
('23103250', 'THAYANNE BRITO ARAUJO', '307715', '2023/2'),
('23105146', 'ALEXANDRE SANTOS DE OLIVEIRA', '307730', '2023/2'),
('22104445', 'CAROLINE MENDES GARCIAS', '307730', '2023/2'),
('23105076', 'EDUARDO DA SILVA MARCELLO', '307730', '2023/2'),
('23104647', 'FELIPE DE OLIVEIRA CREMA', '307730', '2023/2'),
('23103253', 'GABRIELE DIAS MENEZES', '307730', '2023/2'),
('23103263', 'GABRIEL MASAMI BERNARDES UTIYAMA', '307730', '2023/2'),
('23105144', 'GUILHERME PEREIRA OSSANES', '307730', '2023/2'),
('22202230', 'HELENA CAETANO MORALE DE OLIVEIRA', '307730', '2023/2'),
('23103818', 'LAURA LEAL LISBOA', '307730', '2023/2'),
('22202627', 'LAURA SCHEIDEMANTEL GARCIA', '307730', '2023/2'),
('23104530', 'LUCAS SARAIVA MASCARENHAS', '307730', '2023/2'),
('23103275', 'LUISA LINK BIANCHI', '307730', '2023/2'),
('23103270', 'LUIZA DE MELLO NIZOLI', '307730', '2023/2'),
('23102051', 'MARCELO MIRANDA FERREIRA JUNIOR', '307730', '2023/2'),
('23104842', 'Maria Loandra Azevedo de Oliveira', '307730', '2023/2'),
('23100560', 'MARIA LUISA SILVA VIEIRA', '307730', '2023/2'),
('23103278', 'NATALIA LINK BAHR', '307730', '2023/2'),
('23105003', 'PAMELA REGINA XAVIER HERNANDORENA GARCIA', '307730', '2023/2'),
('23102999', 'RYAN DIAS CANILHA', '307730', '2023/2'),
('23103329', 'STEFANY RIBEIRO ROCHA', '307730', '2023/2'),
('23105146', 'ALEXANDRE SANTOS DE OLIVEIRA', '307748', '2023/2'),
('22202184', 'VINICIUS ALVES ALMEIDA', '307730', '2023/2'),
('23103250', 'THAYANNE BRITO ARAUJO', '307730', '2023/2'),
('22104430', 'WESLEY SILVA DA SILVA', '307730', '2023/2'),
('23100560', 'MARIA LUISA SILVA VIEIRA', '307748', '2023/2'),
('22203364', 'ANA CLARA FAZENDA ARAUJO', '307748', '2023/2'),
('23105145', 'IAN REINHARDT MORAN', '307748', '2023/2'),
('22202679', 'CAMILA SANTIN DA SILVA', '307748', '2023/2'),
('23102051', 'MARCELO MIRANDA FERREIRA JUNIOR', '307748', '2023/2'),
('23103818', 'LAURA LEAL LISBOA', '307748', '2023/2'),
('23103268', 'ANDREI COELHO FETTER', '307748', '2023/2'),
('23100999', 'MARIANA AMARAL DO AMARAL', '307748', '2023/2'),
('23103270', 'LUIZA DE MELLO NIZOLI', '307748', '2023/2'),
('22202230', 'HELENA CAETANO MORALE DE OLIVEIRA', '307748', '2023/2'),
('23103803', 'LARISSA MESQUITA DE ALMEIDA', '307748', '2023/2'),
('23105144', 'GUILHERME PEREIRA OSSANES', '307748', '2023/2'),
('23100994', 'JADER LUIZ PETTER TESSMER FILHO', '307748', '2023/2'),
('23101797', 'LEONARDO AUGUSTO PEREIRA DAS DORES', '307748', '2023/2'),
('23102236', 'LUCAS GEHRKE ALVES', '307748', '2023/2'),
('23104647', 'FELIPE DE OLIVEIRA CREMA', '307748', '2023/2'),
('22104445', 'CAROLINE MENDES GARCIAS', '307748', '2023/2'),
('23101809', 'MATHEUS CAVALCANTE DOS SANTOS', '307748', '2023/2'),
('23103278', 'NATALIA LINK BAHR', '307748', '2023/2'),
('23101003', 'OCTAVIO MONTEIRO PRIOTTO', '307748', '2023/2'),
('23103242', 'SOPHYA HARTER SILVA', '307748', '2023/2'),
('22104430', 'WESLEY SILVA DA SILVA', '307748', '2023/2'),
('23105146', 'ALEXANDRE SANTOS DE OLIVEIRA', '307750', '2023/2'),
('22203364', 'ANA CLARA FAZENDA ARAUJO', '307750', '2023/2'),
('23101806', 'ANA LAURA MENDES BRUSAMARELLO', '307750', '2023/2'),
('23103268', 'ANDREI COELHO FETTER', '307750', '2023/2'),
('22202679', 'CAMILA SANTIN DA SILVA', '307750', '2023/2'),
('22104445', 'CAROLINE MENDES GARCIAS', '307750', '2023/2'),
('23103277', 'DIOVANA FONSECA FERREIRA', '307750', '2023/2'),
('23103269', 'EDUARDA RITTES PEREIRA', '307750', '2023/2'),
('23103272', 'ESTELA DE SOUZA WALTZER', '307750', '2023/2'),
('23104647', 'FELIPE DE OLIVEIRA CREMA', '307750', '2023/2'),
('22202219', 'FREDERICO PEREIRA CASTILHO', '307750', '2023/2'),
('23103253', 'GABRIELE DIAS MENEZES', '307750', '2023/2'),
('23103263', 'GABRIEL MASAMI BERNARDES UTIYAMA', '307750', '2023/2'),
('23105144', 'GUILHERME PEREIRA OSSANES', '307750', '2023/2'),
('23105145', 'IAN REINHARDT MORAN', '307750', '2023/2'),
('23100395', 'ISABELLE PENELUC ROCHA', '307750', '2023/2'),
('23100994', 'JADER LUIZ PETTER TESSMER FILHO', '307750', '2023/2'),
('23200449', 'JOAO GABRIEL MUNHOZ PEREIRA', '307750', '2023/2'),
('23103524', 'JOAO PEDRO PORCIUNCULA OLIVEIRA', '307750', '2023/2'),
('23104529', 'JULIA AMONTE ROTA PEREIRA', '307750', '2023/2'),
('23100396', 'JULIA MARRONI DA ROSA', '307750', '2023/2'),
('23103803', 'LARISSA MESQUITA DE ALMEIDA', '307750', '2023/2'),
('23103276', 'LAURA BANDIERA', '307750', '2023/2'),
('23103818', 'LAURA LEAL LISBOA', '307750', '2023/2'),
('23101797', 'LEONARDO AUGUSTO PEREIRA DAS DORES', '307750', '2023/2'),
('23103273', 'LUANA CRISTINA BRASSOLOTO', '307750', '2023/2'),
('23103271', 'LUANA PERGHER BOTTEGA', '307750', '2023/2'),
('23102236', 'LUCAS GEHRKE ALVES', '307750', '2023/2'),
('23104530', 'LUCAS SARAIVA MASCARENHAS', '307750', '2023/2'),
('23103275', 'LUISA LINK BIANCHI', '307750', '2023/2'),
('23103270', 'LUIZA DE MELLO NIZOLI', '307750', '2023/2'),
('23102051', 'MARCELO MIRANDA FERREIRA JUNIOR', '307750', '2023/2'),
('23103265', 'MARCIELE DAMACENA RODRIGUES', '307750', '2023/2'),
('23100560', 'MARIA LUISA SILVA VIEIRA', '307750', '2023/2'),
('23100999', 'MARIANA AMARAL DO AMARAL', '307750', '2023/2'),
('23101809', 'MATHEUS CAVALCANTE DOS SANTOS', '307750', '2023/2'),
('23103278', 'NATALIA LINK BAHR', '307750', '2023/2'),
('23101003', 'OCTAVIO MONTEIRO PRIOTTO', '307750', '2023/2'),
('23100564', 'RAFAELA NUNES RUSSO', '307750', '2023/2'),
('23102999', 'RYAN DIAS CANILHA', '307750', '2023/2'),
('20104848', 'SOLANO DA SILVA LESSA', '307750', '2023/2'),
('22104430', 'WESLEY SILVA DA SILVA', '307750', '2023/2'),
('22202662', 'BARBARA CANUTO SAMPAIO', '307762', '2023/2'),
('22202626', 'ANALICE FARIAS DUQUIA MACHADO', '307762', '2023/2'),
('23103242', 'SOPHYA HARTER SILVA', '307750', '2023/2'),
('22202237', 'JULIANA LUONGO PELUFO', '307762', '2023/2'),
('22202289', 'CARLA JULIANE VEGNER', '307762', '2023/2'),
('19103739', 'JESIELE CONCEICAO CORREA AZZOLIN', '307762', '2023/2'),
('22103488', 'IZADORA WRUCH CARDOSO', '307762', '2023/2'),
('22203365', 'EDUARDA RIBEIRO FONSECA', '307762', '2023/2'),
('22202213', 'ALINE NACHTIGALL MILBRATH', '307762', '2023/2'),
('22104427', 'THIERRI VOLZ BORGES', '307750', '2023/2'),
('22202225', 'BRUNA RAMOS MACHADO DOS SANTOS', '307762', '2023/2'),
('22202215', 'JULIO CESAR DA SILVA GAIGER', '307762', '2023/2'),
('22202227', 'JULLIA MELO DE MENEZES', '307762', '2023/2'),
('22203370', 'LAHY TOILLIER DE QUADROS', '307762', '2023/2'),
('22203338', 'LAURA SENNA DIAS', '307762', '2023/2'),
('22202234', 'MARIA EDUARDA INDA GOMES', '307762', '2023/2'),
('22202625', 'RAPHAEL SILVA BACELO', '307762', '2023/2'),
('19200206', 'VITORIA CARDOSO DOS SANTOS', '307762', '2023/2'),
('22202505', 'VITORIA ZIMMER LINCK', '307762', '2023/2'),
('22202221', 'ALINE DE FARIAS MILECH', '307777', '2023/2'),
('20103590', 'ANA CAROLINA MINHO DE SOUZA', '307777', '2023/2'),
('22202225', 'BRUNA RAMOS MACHADO DOS SANTOS', '307777', '2023/2'),
('22202223', 'CAMILA OLIVEIRA DE OLIVEIRA', '307777', '2023/2'),
('22203369', 'CAROLINA RODRIGUEZ GARRALAGA', '307777', '2023/2'),
('22203365', 'EDUARDA RIBEIRO FONSECA', '307777', '2023/2'),
('22202186', 'EMELY REGINA FILA', '307777', '2023/2'),
('19103739', 'JESIELE CONCEICAO CORREA AZZOLIN', '307777', '2023/2'),
('22102360', 'LUIZ EDUARDO HANSEN DA SILVEIRA', '307777', '2023/2'),
('22200101', 'MILEICA CRISTIANE BOBSIN DA SILVA', '307777', '2023/2'),
('22202213', 'ALINE NACHTIGALL MILBRATH', '307788', '2023/2'),
('22202626', 'ANALICE FARIAS DUQUIA MACHADO', '307788', '2023/2'),
('19201430', 'ANDRIELE SIMOES PEREIRA', '307788', '2023/2'),
('22202662', 'BARBARA CANUTO SAMPAIO', '307788', '2023/2'),
('22202289', 'CARLA JULIANE VEGNER', '307788', '2023/2'),
('21201557', 'Diego Lopes Ribeiro', '307788', '2023/2'),
('22103488', 'IZADORA WRUCH CARDOSO', '307788', '2023/2'),
('22202237', 'JULIANA LUONGO PELUFO', '307788', '2023/2'),
('22202215', 'JULIO CESAR DA SILVA GAIGER', '307788', '2023/2'),
('22202227', 'JULLIA MELO DE MENEZES', '307788', '2023/2'),
('22203370', 'LAHY TOILLIER DE QUADROS', '307788', '2023/2'),
('22203338', 'LAURA SENNA DIAS', '307788', '2023/2'),
('22202234', 'MARIA EDUARDA INDA GOMES', '307788', '2023/2'),
('22102910', 'NATHALIA MACHADO LINS BRUM', '307788', '2023/2'),
('20201107', 'PAMELA DE OLIVEIRA SOARES', '307788', '2023/2'),
('22102674', 'PEDRO SÁ DA SILVA SILVEIRA', '307788', '2023/2'),
('22202625', 'RAPHAEL SILVA BACELO', '307788', '2023/2'),
('20201963', 'VALERIA VALERIO GARCIA MATOS', '307788', '2023/2'),
('22202505', 'VITORIA ZIMMER LINCK', '307788', '2023/2'),
('22202212', 'ALICE CALDEIRA FRANCIONI LANG', '307799', '2023/2'),
('22202221', 'ALINE DE FARIAS MILECH', '307799', '2023/2'),
('21201479', 'ALYANDRA BUCHWEITZ MORALES', '307799', '2023/2'),
('20103590', 'ANA CAROLINA MINHO DE SOUZA', '307799', '2023/2'),
('22202626', 'ANALICE FARIAS DUQUIA MACHADO', '307799', '2023/2'),
('19201430', 'ANDRIELE SIMOES PEREIRA', '307799', '2023/2'),
('22202204', 'CAMILLY DA SILVA ZAIONS', '307799', '2023/2'),
('20200574', 'EMILIO COELHO SILVA', '307799', '2023/2'),
('22202232', 'ISABELLY SANTOS LIMA', '307799', '2023/2'),
('22202215', 'JULIO CESAR DA SILVA GAIGER', '307799', '2023/2'),
('22202624', 'LUISA ROLOFF CONCEICAO', '307799', '2023/2'),
('20201107', 'PAMELA DE OLIVEIRA SOARES', '307799', '2023/2'),
('22202625', 'RAPHAEL SILVA BACELO', '307799', '2023/2'),
('22102910', 'NATHALIA MACHADO LINS BRUM', '307799', '2023/2'),
('22102674', 'PEDRO SÁ DA SILVA SILVEIRA', '307799', '2023/2'),
('21201956', 'Patrick Ferreira chagas', '307799', '2023/2'),
('22202212', 'ALICE CALDEIRA FRANCIONI LANG', '307803', '2023/2'),
('22202201', 'MANUELA DE AZEVEDO ALDRIGUI', '307799', '2023/2'),
('17201567', 'ALISSON DA COSTA LOPES', '307803', '2023/2'),
('21201479', 'ALYANDRA BUCHWEITZ MORALES', '307803', '2023/2'),
('22202626', 'ANALICE FARIAS DUQUIA MACHADO', '307803', '2023/2'),
('21201557', 'Diego Lopes Ribeiro', '307803', '2023/2'),
('20103687', 'Diogo Póky Jacinto', '307803', '2023/2'),
('22103489', 'ERIKA RODRIGUES MACHADO', '307803', '2023/2'),
('22102994', 'GUILHERME TEIXEIRA DA SILVEIRA', '307803', '2023/2'),
('21201051', 'IURI HORNKE TUCHTENHAGEN', '307803', '2023/2'),
('22202215', 'JULIO CESAR DA SILVA GAIGER', '307803', '2023/2'),
('23200450', 'MARCELO ANTONIO SARTURI', '307803', '2023/2'),
('21201956', 'Patrick Ferreira chagas', '307803', '2023/2'),
('22202625', 'RAPHAEL SILVA BACELO', '307803', '2023/2'),
('22203368', 'SABRINA VALERIO MARQUES', '307803', '2023/2'),
('22202727', 'Tatiana Serutina Lopes da Silva', '307803', '2023/2'),
('20201963', 'VALERIA VALERIO GARCIA MATOS', '307803', '2023/2'),
('22202730', 'Veronica Salvador ', '307803', '2023/2'),
('20102973', 'VITORIA DA CRUZ SILVEIRA', '307803', '2023/2'),
('22103029', 'ANA MARIA DE OLIVEIRA', '308168', '2023/2'),
('22101884', 'ANDERSON DE OLIVEIRA FICKEL', '308168', '2023/2'),
('22103167', 'DIELY DA SILVEIRA GOUVEA', '308168', '2023/2'),
('22100332', 'EDUARDA FOLHA FEDRIZZI', '308168', '2023/2'),
('21202334', 'HELENA STORCH DE SOUZA', '308168', '2023/2'),
('22103331', 'HENRIQUE ALMEIDA BORTT', '308168', '2023/2'),
('22102673', 'JULIA VENZKE SILVA', '308168', '2023/2'),
('21202179', 'LETICIA DA SILVA RIOS', '308168', '2023/2'),
('22104465', 'LUIZA CENTENO NALERIO', '308168', '2023/2'),
('19103302', 'MARCELO CAMPOLIM', '308168', '2023/2'),
('19201304', 'SILVIA DE LIMA REIS', '308168', '2023/2'),
('22104429', 'VIRGINIA POGORZELSKI DE VARGAS', '308168', '2023/2'),
('20200869', 'ANDREAS PEDREIRA VERNETTI', '308174', '2023/2'),
('19201007', 'DIANE PEREIRA ROSA', '308174', '2023/2'),
('22103167', 'DIELY DA SILVEIRA GOUVEA', '308174', '2023/2'),
('21200593', 'FERNANDO ROSINHA NUNES FILHO', '308174', '2023/2'),
('20202025', 'JULIANA LIMA DO AMARAL', '308174', '2023/2'),
('21201272', 'LETICIA NUNES FRANCO', '308174', '2023/2'),
('22104465', 'LUIZA CENTENO NALERIO', '308174', '2023/2'),
('19103302', 'MARCELO CAMPOLIM', '308174', '2023/2'),
('20105282', 'MIRIAN CHAIANE DORNELLES ALVES', '308174', '2023/2'),
('19201304', 'SILVIA DE LIMA REIS', '308174', '2023/2'),
('20201113', 'VANESSA BORGES AGUERO', '308174', '2023/2'),
('22104429', 'VIRGINIA POGORZELSKI DE VARGAS', '308174', '2023/2'),
('22102769', 'VITOR GABRIEL DA SILVA', '308174', '2023/2'),
('22103112', 'YASMIN PENELUC ROCHA', '308174', '2023/2'),
('20103079', 'ALICE E SOUZA HENRIQUES', '308214', '2023/2'),
('20202045', 'ALLAN MARTINS MULLER', '308214', '2023/2'),
('20100601', 'ANA CAROLINA DA SILVA SOUZA', '308214', '2023/2'),
('20201079', 'ANA JULIA TAVARES CORREA', '308214', '2023/2'),
('20201089', 'CRISTINA HELENA MORELLO SARTORI', '308214', '2023/2'),
('20201080', 'DAIANE SILVA SANTOS DA CRUZ', '308214', '2023/2'),
('20201106', 'DAIANI CORREA GONCALVES', '308214', '2023/2'),
('20101522', 'FERNANDA TUERLINCKX DA SILVA BRUNO CORREA', '308214', '2023/2'),
('20201956', 'KAILA ANDRESSA DOS SANTOS OLIVEIRA', '308214', '2023/2'),
('20105018', 'KAREN MULLER BUBOLZ', '308214', '2023/2'),
('20201171', 'LARA EMMILE EVANGELISTA VALENÇA', '308214', '2023/2'),
('20101175', 'MAIARA OLIVEIRA ORTIZ CORREA', '308214', '2023/2'),
('20200587', 'NATHALIA PEREIRA DA SILVA PORTO', '308214', '2023/2'),
('20200513', 'PEDRO DENTICE DA SILVA LEITE', '308214', '2023/2'),
('20201957', 'RAFAELA CHAVES CORREA', '308214', '2023/2'),
('17200428', 'ENZO LIGORIO CARPENEDO', '308381', '2023/2'),
('17200781', 'JANAINA DA SILVA SILVEIRA', '308381', '2023/2'),
('20103546', 'JULIANA THUROW KRUGER', '308381', '2023/2'),
('18202280', 'NICOLAS CAMPOS RODEGHIERO', '308381', '2023/2'),
('19200231', 'AFONSO DA GAMA', '308384', '2023/2'),
('19103461', 'ALICE RIBEIRO DE SOUZA MENEZES', '308384', '2023/2'),
('19200272', 'ÂNDREA PIRES DANERIS', '308384', '2023/2'),
('19201010', 'ANDRESSA GONCALVES MONTEIRO ANDRADE', '308384', '2023/2'),
('18104926', 'ANDRESSA RODRIGUES MACHADO', '308384', '2023/2'),
('15200280', 'BERNARDO FERREIRA MENDONÇA', '308384', '2023/2'),
('19100527', 'BRUNA RODRIGUES RIBEIRO', '308384', '2023/2'),
('19200197', 'EDUARDA MACKEDANZ PORATH', '308384', '2023/2'),
('17200428', 'ENZO LIGORIO CARPENEDO', '308384', '2023/2'),
('19100474', 'GABRIEL DA SILVA SOPENA', '308384', '2023/2'),
('17200781', 'JANAINA DA SILVA SILVEIRA', '308384', '2023/2'),
('19200617', 'LAURA CAMPANHARO MARANS', '308384', '2023/2'),
('18200819', 'LEDIANE VAREIRA DA SILVA', '308384', '2023/2'),
('19102195', 'LETICIA MARAN SANSAO', '308384', '2023/2'),
('19200833', 'MATEUS TAVARES LUDTKE', '308384', '2023/2'),
('19200599', 'MATHIAS PONCHE BARBOSA', '308384', '2023/2'),
('18202280', 'NICOLAS CAMPOS RODEGHIERO', '308384', '2023/2'),
('19200609', 'OTAVIO PEDRO DOS SANTOS', '308384', '2023/2'),
('19200196', 'RAFAEL ROSA DE AVILA', '308384', '2023/2'),
('19200690', 'YURI SCARPARO VALENTE', '308384', '2023/2'),
('19200231', 'AFONSO DA GAMA', '308388', '2023/2'),
('19103461', 'ALICE RIBEIRO DE SOUZA MENEZES', '308388', '2023/2'),
('19200272', 'ÂNDREA PIRES DANERIS', '308388', '2023/2'),
('19201010', 'ANDRESSA GONCALVES MONTEIRO ANDRADE', '308388', '2023/2'),
('16200568', 'ANGELO CARARO ZANINI', '308388', '2023/2'),
('19100527', 'BRUNA RODRIGUES RIBEIRO', '308388', '2023/2'),
('19200197', 'EDUARDA MACKEDANZ PORATH', '308388', '2023/2'),
('18201741', 'FERNANDA PEDROZO DAS NEVES', '308388', '2023/2'),
('18102516', 'GIOVANNA BERTOLLO TAMBARA', '308388', '2023/2'),
('19200802', 'HENRIQUE FREITAS JALIL', '308388', '2023/2'),
('15102080', 'IZABEL GONCALVES DE SOUZA', '308388', '2023/2'),
('19200617', 'LAURA CAMPANHARO MARANS', '308388', '2023/2'),
('19102195', 'LETICIA MARAN SANSAO', '308388', '2023/2'),
('15100197', 'MARIANE DIAS', '308388', '2023/2'),
('19200833', 'MATEUS TAVARES LUDTKE', '308388', '2023/2'),
('19200599', 'MATHIAS PONCHE BARBOSA', '308388', '2023/2'),
('19200609', 'OTAVIO PEDRO DOS SANTOS', '308388', '2023/2'),
('19200196', 'RAFAEL ROSA DE AVILA', '308388', '2023/2'),
('16200181', 'THIAGO FILLIPE SAMPAIO DE SOUSA', '308388', '2023/2'),
('19200690', 'YURI SCARPARO VALENTE', '308388', '2023/2'),
('19100526', 'ANDERSON ROTUNDO PEREZ', '308417', '2023/2'),
('19102268', 'ARTHUR PRETTO MALDANER', '308417', '2023/2'),
('19100545', 'BRUNA ZEMBRUSKI GOMES', '308417', '2023/2'),
('19104799', 'CASSIANE SOUZA FOLY DO NASCIMENTO', '308417', '2023/2'),
('19101706', 'FELIPE AUGUSTO KRAVCHENKO CARDOSO', '308417', '2023/2'),
('19103054', 'FELIPE BERWALDT ISLABAO', '308417', '2023/2'),
('19105179', 'FELIPE DOS SANTOS COSTA', '308417', '2023/2'),
('19103067', 'KAROLINA REIS DA ROSA', '308417', '2023/2'),
('19100476', 'KELEM SOARES KONFLANZ', '308417', '2023/2'),
('19103188', 'LARISSA WULFF OLIVEIRA', '308417', '2023/2'),
('19100463', 'LUIS HENRIQUE BAPTISTA REHBEIN', '308417', '2023/2'),
('19102617', 'MARIA EDUARDA ARMINDO DE SOUZA', '308417', '2023/2'),
('19102280', 'MARIA EDUARDA DALMEIDA PAES', '308417', '2023/2'),
('19100521', 'MARIA EDUARDA PERES SCHMALFUSS', '308417', '2023/2'),
('19100431', 'MARINA INES ROMANO SANTIN', '308417', '2023/2'),
('19103407', 'PATRICK ARINOS DIAS FARIAS', '308417', '2023/2'),
('19103423', 'THALIA ROSA DO NASCIMENTO', '308417', '2023/2'),
('19100475', 'VICTOR CARVALHO MORAES', '308417', '2023/2'),
('19102880', 'VICTORIA KETLEN MOREIRA', '308417', '2023/2'),
('19103744', 'WILLIAM TERRA NEVES', '308417', '2023/2'),
('19100526', 'ANDERSON ROTUNDO PEREZ', '308439', '2023/2'),
('19100545', 'BRUNA ZEMBRUSKI GOMES', '308439', '2023/2'),
('19104799', 'CASSIANE SOUZA FOLY DO NASCIMENTO', '308439', '2023/2'),
('19103054', 'FELIPE BERWALDT ISLABAO', '308439', '2023/2'),
('19105179', 'FELIPE DOS SANTOS COSTA', '308439', '2023/2'),
('19103067', 'KAROLINA REIS DA ROSA', '308439', '2023/2'),
('19100476', 'KELEM SOARES KONFLANZ', '308439', '2023/2'),
('19100463', 'LUIS HENRIQUE BAPTISTA REHBEIN', '308439', '2023/2'),
('19102617', 'MARIA EDUARDA ARMINDO DE SOUZA', '308439', '2023/2'),
('19102280', 'MARIA EDUARDA DALMEIDA PAES', '308439', '2023/2'),
('19100521', 'MARIA EDUARDA PERES SCHMALFUSS', '308439', '2023/2'),
('19100431', 'MARINA INES ROMANO SANTIN', '308439', '2023/2'),
('19103407', 'PATRICK ARINOS DIAS FARIAS', '308439', '2023/2'),
('19102880', 'VICTORIA KETLEN MOREIRA', '308439', '2023/2'),
('19103744', 'WILLIAM TERRA NEVES', '308439', '2023/2'),
('19100526', 'ANDERSON ROTUNDO PEREZ', '308456', '2023/2'),
('19100545', 'BRUNA ZEMBRUSKI GOMES', '308456', '2023/2'),
('19104799', 'CASSIANE SOUZA FOLY DO NASCIMENTO', '308456', '2023/2'),
('19103054', 'FELIPE BERWALDT ISLABAO', '308456', '2023/2'),
('19105179', 'FELIPE DOS SANTOS COSTA', '308456', '2023/2'),
('19103067', 'KAROLINA REIS DA ROSA', '308456', '2023/2'),
('19100476', 'KELEM SOARES KONFLANZ', '308456', '2023/2'),
('19100463', 'LUIS HENRIQUE BAPTISTA REHBEIN', '308456', '2023/2'),
('19102617', 'MARIA EDUARDA ARMINDO DE SOUZA', '308456', '2023/2'),
('19102280', 'MARIA EDUARDA DALMEIDA PAES', '308456', '2023/2'),
('19100521', 'MARIA EDUARDA PERES SCHMALFUSS', '308456', '2023/2'),
('19100431', 'MARINA INES ROMANO SANTIN', '308456', '2023/2'),
('18200157', 'EDUARDA NORENBERG HEIDMANN', '309157', '2023/2'),
('18200107', 'GABRIEL TWARDOWSKI DA ROCHA', '309157', '2023/2'),
('18200822', 'GABRIELA KRAEMER', '309157', '2023/2'),
('17103708', 'ANA PAULA SANTANA GARCIA', '309157', '2023/2'),
('18200108', 'ANTONIO MARCOS GONCALVES DUARTE', '309157', '2023/2'),
('18201109', 'JULIA RODRIGUES BURKERT', '309147', '2023/2'),
('18201051', 'ISABELA ROCHA STEIMBRUCH', '309147', '2023/2'),
('18200913', 'NELSON MARTINS SOARES SOBRINHO', '309147', '2023/2'),
('18200105', 'MARIANA PIRES LEMOS', '309147', '2023/2'),
('18200107', 'GABRIEL TWARDOWSKI DA ROCHA', '309147', '2023/2'),
('18200824', 'AMANDA TONETA PRUX', '309157', '2023/2'),
('18201098', 'THAINA DIAS SCHOLANTE', '309147', '2023/2'),
('18200824', 'AMANDA TONETA PRUX', '309147', '2023/2'),
('18200823', 'LUIZA SOUZA SCHMIDT', '309147', '2023/2'),
('18200110', 'NATALIA BRITO SOARES', '309147', '2023/2'),
('19102880', 'VICTORIA KETLEN MOREIRA', '308456', '2023/2'),
('12200120', 'LIGIA EDUARDA KOLLING LERMEN', '309147', '2023/2'),
('18200739', 'JAQUELINE DE MEDEIROS LORENZET', '309147', '2023/2'),
('18201045', 'GIOVANNA BOFF PADILHA', '309147', '2023/2'),
('18200822', 'GABRIELA KRAEMER', '309147', '2023/2'),
('18200157', 'EDUARDA NORENBERG HEIDMANN', '309147', '2023/2'),
('19103744', 'WILLIAM TERRA NEVES', '308456', '2023/2'),
('18200108', 'ANTONIO MARCOS GONCALVES DUARTE', '309147', '2023/2'),
('19103407', 'PATRICK ARINOS DIAS FARIAS', '308456', '2023/2'),
('18201045', 'GIOVANNA BOFF PADILHA', '309157', '2023/2'),
('18201051', 'ISABELA ROCHA STEIMBRUCH', '309157', '2023/2'),
('18200739', 'JAQUELINE DE MEDEIROS LORENZET', '309157', '2023/2'),
('18201109', 'JULIA RODRIGUES BURKERT', '309157', '2023/2'),
('12200120', 'LIGIA EDUARDA KOLLING LERMEN', '309157', '2023/2'),
('18200823', 'LUIZA SOUZA SCHMIDT', '309157', '2023/2'),
('18200105', 'MARIANA PIRES LEMOS', '309157', '2023/2'),
('18200110', 'NATALIA BRITO SOARES', '309157', '2023/2'),
('18200913', 'NELSON MARTINS SOARES SOBRINHO', '309157', '2023/2'),
('18201098', 'THAINA DIAS SCHOLANTE', '309157', '2023/2'),
('18102814', 'ALICE EBERSOL AVILA', '309203', '2023/2'),
('17201564', 'AMANDA DA SILVA OLIVEIRA', '309203', '2023/2'),
('17200659', 'BIANCA TELES DA COSTA', '309203', '2023/2'),
('13200160', 'CAMILA SIMONAGGIO', '309203', '2023/2'),
('16103110', 'CRISTOPHER DAVI GRIEP', '309203', '2023/2'),
('15100783', 'EDISON RONDON NETO', '309203', '2023/2'),
('16201006', 'FERNANDA MENDES OLIVEIRA', '309203', '2023/2'),
('15200888', 'IVANA AZEREDO DA COSTA', '309203', '2023/2'),
('17101788', 'JOAO ARZELINDO PEREIRA NETO', '309203', '2023/2'),
('18102596', 'LARISSA DE OLIVEIRA PRIMO ALVES', '309203', '2023/2'),
('15201717', 'LUAN DA FONSECA GONCALVES', '309203', '2023/2'),
('16200954', 'LUCAS NATHAN NASCIMENTO DA LUZ', '309203', '2023/2'),
('17200446', 'LUCIANO MONTEZZANO RIOS BACCHIERI', '309203', '2023/2'),
('18105023', 'MICHAELLY RICARDO VIEIRA', '309203', '2023/2'),
('18101407', 'NATANA BIERHALS OTTO', '309203', '2023/2'),
('18101276', 'PEDRO SCHWARTZ KALIL PEREIRA', '309203', '2023/2'),
('15100785', 'RAFAELA FAVRETTO MORAES', '309203', '2023/2'),
('18202052', 'BRUNO FERREIRA DOS SANTOS', '316829', '2023/2'),
('18202055', 'CHARLES CUNHA DO ESPIRITO SANTO', '316829', '2023/2'),
('20201955', 'GIAN CARDOSO SAMPAIO', '316829', '2023/2'),
('16200953', 'JESSICA DA SILVA RODRIGUES', '316829', '2023/2'),
('20202025', 'JULIANA LIMA DO AMARAL', '316829', '2023/2'),
('20104770', 'OTAVIO ISMAR DIAS CAMPOS', '316829', '2023/2'),
('19201318', 'PAULA JESKE DA FONSECA', '316829', '2023/2'),
('20201959', 'TAYSSA DE VASCONCELOS PEREIRA', '316829', '2023/2'),
('18201145', 'THAIS PEDROSO SOARES', '316829', '2023/2'),
('19200206', 'VITORIA CARDOSO DOS SANTOS', '316829', '2023/2'),
('19103028', 'FELIPE HENRIQUE MACHADO MACEDO', '307765', '2023/2'),
('22100888', 'VICTOR LESSA QUADROS', '307765', '2023/2'),
('22202213', 'ALINE NACHTIGALL MILBRATH', '307784', '2023/2'),
('22202662', 'BARBARA CANUTO SAMPAIO', '307784', '2023/2'),
('22202289', 'CARLA JULIANE VEGNER', '307784', '2023/2'),
('22103488', 'IZADORA WRUCH CARDOSO', '307784', '2023/2'),
('22202237', 'JULIANA LUONGO PELUFO', '307784', '2023/2'),
('22202227', 'JULLIA MELO DE MENEZES', '307784', '2023/2'),
('22203370', 'LAHY TOILLIER DE QUADROS', '307784', '2023/2'),
('22202505', 'VITORIA ZIMMER LINCK', '307784', '2023/2'),
('20200869', 'ANDREAS PEDREIRA VERNETTI', '308169', '2023/2'),
('22100330', 'BEATRIZ PALLA SANCHES', '308169', '2023/2'),
('21200841', 'FERNANDA SCHAITEL FIGUEIREDO MEDEIRO', '308169', '2023/2'),
('21200593', 'FERNANDO ROSINHA NUNES FILHO', '308169', '2023/2'),
('22103482', 'JULIANO ZIMMERMANN OLIVEIRA', '308169', '2023/2'),
('19201905', 'NATALIA BRODT SOARES', '308169', '2023/2'),
('22103486', 'RENAN CAVALHEIRO FREITAS', '308169', '2023/2'),
('20201113', 'VANESSA BORGES AGUERO', '308169', '2023/2'),
('22100330', 'BEATRIZ PALLA SANCHES', '308175', '2023/2'),
('22100332', 'EDUARDA FOLHA FEDRIZZI', '308175', '2023/2'),
('21200841', 'FERNANDA SCHAITEL FIGUEIREDO MEDEIRO', '308175', '2023/2'),
('21202334', 'HELENA STORCH DE SOUZA', '308175', '2023/2'),
('22103331', 'HENRIQUE ALMEIDA BORTT', '308175', '2023/2'),
('22103482', 'JULIANO ZIMMERMANN OLIVEIRA', '308175', '2023/2'),
('22102673', 'JULIA VENZKE SILVA', '308175', '2023/2'),
('18202278', 'LIZIANE MACHADO SILVEIRA GOMES', '308175', '2023/2'),
('19201905', 'NATALIA BRODT SOARES', '308175', '2023/2'),
('19201318', 'PAULA JESKE DA FONSECA', '308175', '2023/2'),
('22103486', 'RENAN CAVALHEIRO FREITAS', '308175', '2023/2'),
('17201567', 'ALISSON DA COSTA LOPES', '307758', '2023/2'),
('21201479', 'ALYANDRA BUCHWEITZ MORALES', '307758', '2023/2'),
('20103590', 'ANA CAROLINA MINHO DE SOUZA', '307758', '2023/2'),
('19201430', 'ANDRIELE SIMOES PEREIRA', '307758', '2023/2'),
('21201915', 'CANDIDO FELIPE MENDONCA FERNANDES', '307758', '2023/2'),
('20202895', 'EDUARDA VENZKE VIEIRA DA CUNHA', '307758', '2023/2'),
('22103491', 'JASMINY AGUIRRE XAVIER', '307758', '2023/2'),
('20201066', 'KAILANY FREITAS MOURA', '307758', '2023/2'),
('18200169', 'KAROLINE PEREIRA MARTINS', '307758', '2023/2'),
('20100683', 'NICOLAS MOREIRA CARVALHO', '307758', '2023/2'),
('20201107', 'PAMELA DE OLIVEIRA SOARES', '307758', '2023/2'),
('21201956', 'Patrick Ferreira chagas', '307758', '2023/2'),
('21201484', 'PIETRA SILVA DA ROSA', '307758', '2023/2'),
('21201485', 'THAILANE CORREA DE OLIVEIRA', '307758', '2023/2'),
('22202626', 'ANALICE FARIAS DUQUIA MACHADO', '307785', '2023/2'),
('19201430', 'ANDRIELE SIMOES PEREIRA', '307785', '2023/2'),
('22202215', 'JULIO CESAR DA SILVA GAIGER', '307785', '2023/2'),
('22203338', 'LAURA SENNA DIAS', '307785', '2023/2'),
('22202234', 'MARIA EDUARDA INDA GOMES', '307785', '2023/2'),
('22101884', 'ANDERSON DE OLIVEIRA FICKEL', '308161', '2023/2'),
('18202052', 'BRUNO FERREIRA DOS SANTOS', '308176', '2023/2'),
('22100332', 'EDUARDA FOLHA FEDRIZZI', '308161', '2023/2'),
('22102910', 'NATHALIA MACHADO LINS BRUM', '307785', '2023/2'),
('22102674', 'PEDRO SÁ DA SILVA SILVEIRA', '307785', '2023/2'),
('22103029', 'ANA MARIA DE OLIVEIRA', '308161', '2023/2'),
('22103331', 'HENRIQUE ALMEIDA BORTT', '308161', '2023/2'),
('18200128', 'GIULIANA MARIA RIBEIRO DA SILVA', '308176', '2023/2'),
('17103708', 'ANA PAULA SANTANA GARCIA', '309159', '2023/2'),
('21202334', 'HELENA STORCH DE SOUZA', '308161', '2023/2'),
('22202625', 'RAPHAEL SILVA BACELO', '307785', '2023/2'),
('20201955', 'GIAN CARDOSO SAMPAIO', '308161', '2023/2'),
('22102673', 'JULIA VENZKE SILVA', '308161', '2023/2'),
('16200953', 'JESSICA DA SILVA RODRIGUES', '308161', '2023/2'),
('18201752', 'ANDREZA MONTELLI DO ROSARIO', '309151', '2023/2'),
('18200013', 'DAIMON DE OLIVEIRA MARTINS', '309151', '2023/2'),
('18200866', 'HENRIQUE PACHECO PERES', '309151', '2023/2'),
('16201301', 'LEONARDO COSTA E SILVA', '309151', '2023/2'),
('18202279', 'JULIA SILVA GOMES DE ARAUJO', '309151', '2023/2'),
('22104354', 'LAURA AZAMBUJA FERNANDES', '308161', '2023/2'),
('18200108', 'ANTONIO MARCOS GONCALVES DUARTE', '309159', '2023/2'),
('22103256', 'PEDRO AFONSO MACHADO NUNES', '308161', '2023/2'),
('18201145', 'THAIS PEDROSO SOARES', '308161', '2023/2'),
('18201183', 'BRUNA MACHADO FERNANDES', '309151', '2023/2'),
('18200857', 'MATHEUS POLESSO PATIAS', '309151', '2023/2'),
('18201752', 'ANDREZA MONTELLI DO ROSARIO', '309159', '2023/2'),
('18200951', 'DIEGO HENRIQUE DE SOUSA', '309151', '2023/2'),
('15102080', 'IZABEL GONCALVES DE SOUZA', '309151', '2023/2'),
('20200511', 'ALDERLAN FRANCISCO FERREIRA DOS SANTOS', '309159', '2023/2'),
('18200747', 'MATEUS GAYA DOS SANTOS', '309151', '2023/2'),
('18200056', 'FERNANDO ANTONIO VARGAS JUNIOR', '309151', '2023/2'),
('19104346', 'BRUNO MARTINS DA SILVA', '309159', '2023/2'),
('18200821', 'ERIKA LIMA FONSECA', '309151', '2023/2'),
('18102655', 'FELIPE BARBOSA PEREIRA', '309151', '2023/2'),
('14200737', 'RUBENS TADEU MARTINS JUNIOR', '309151', '2023/2'),
('18200013', 'DAIMON DE OLIVEIRA MARTINS', '309159', '2023/2'),
('18200951', 'DIEGO HENRIQUE DE SOUSA', '309159', '2023/2'),
('18200157', 'EDUARDA NORENBERG HEIDMANN', '309159', '2023/2'),
('18200821', 'ERIKA LIMA FONSECA', '309159', '2023/2'),
('18102655', 'FELIPE BARBOSA PEREIRA', '309159', '2023/2'),
('18200056', 'FERNANDO ANTONIO VARGAS JUNIOR', '309159', '2023/2'),
('18200107', 'GABRIEL TWARDOWSKI DA ROCHA', '309159', '2023/2'),
('18102516', 'GIOVANNA BERTOLLO TAMBARA', '309159', '2023/2'),
('18105076', 'VAGNER MORALES MACHADO JUNIOR', '309207', '2023/2'),
('18200739', 'JAQUELINE DE MEDEIROS LORENZET', '309159', '2023/2'),
('18102881', 'VINICIUS PEREIRA BALONEQUE', '309207', '2023/2'),
('15201717', 'LUAN DA FONSECA GONCALVES', '309218', '2023/2'),
('14200737', 'RUBENS TADEU MARTINS JUNIOR', '309159', '2023/2'),
('17200446', 'LUCIANO MONTEZZANO RIOS BACCHIERI', '309218', '2023/2'),
('18102727', 'DANIEL HUTTNER BORK', '309221', '2023/2'),
('13200160', 'CAMILA SIMONAGGIO', '309207', '2023/2'),
('18103467', 'JANUARIO TEIXEIRA DA SILVEIRA', '309159', '2023/2'),
('17200659', 'BIANCA TELES DA COSTA', '309221', '2023/2'),
('15200888', 'IVANA AZEREDO DA COSTA', '309221', '2023/2'),
('18201098', 'THAINA DIAS SCHOLANTE', '309159', '2023/2'),
('13200160', 'CAMILA SIMONAGGIO', '309218', '2023/2'),
('18201045', 'GIOVANNA BOFF PADILHA', '309159', '2023/2'),
('17200659', 'BIANCA TELES DA COSTA', '309207', '2023/2'),
('18101181', 'JULIA SEDREZ DE SOUZA', '309221', '2023/2'),
('18200169', 'KAROLINE PEREIRA MARTINS', '309159', '2023/2'),
('17200446', 'LUCIANO MONTEZZANO RIOS BACCHIERI', '309207', '2023/2'),
('18101206', 'GABRIEL LIMA BRAZ', '309221', '2023/2'),
('17201564', 'AMANDA DA SILVA OLIVEIRA', '309221', '2023/2'),
('18202279', 'JULIA SILVA GOMES DE ARAUJO', '309159', '2023/2'),
('18101179', 'CINTHIA FONSECA ARAUJO', '309218', '2023/2'),
('15201717', 'LUAN DA FONSECA GONCALVES', '309207', '2023/2'),
('18101181', 'JULIA SEDREZ DE SOUZA', '309207', '2023/2'),
('15100785', 'RAFAELA FAVRETTO MORAES', '309207', '2023/2'),
('18200913', 'NELSON MARTINS SOARES SOBRINHO', '309159', '2023/2'),
('16201301', 'LEONARDO COSTA E SILVA', '309159', '2023/2'),
('18200105', 'MARIANA PIRES LEMOS', '309159', '2023/2'),
('18103930', 'FERNANDA FONTES DE FREITAS', '309221', '2023/2'),
('18201109', 'JULIA RODRIGUES BURKERT', '309159', '2023/2'),
('16103110', 'CRISTOPHER DAVI GRIEP', '309218', '2023/2'),
('18103459', 'GABRIELA PEGLOW CRESPO', '309221', '2023/2'),
('12200120', 'LIGIA EDUARDA KOLLING LERMEN', '309218', '2023/2'),
('16200954', 'LUCAS NATHAN NASCIMENTO DA LUZ', '309218', '2023/2'),
('18101206', 'GABRIEL LIMA BRAZ', '309207', '2023/2'),
('18200110', 'NATALIA BRITO SOARES', '309159', '2023/2'),
('18200823', 'LUIZA SOUZA SCHMIDT', '309159', '2023/2'),
('16103110', 'CRISTOPHER DAVI GRIEP', '309207', '2023/2'),
('18200857', 'MATHEUS POLESSO PATIAS', '309159', '2023/2'),
('15200888', 'IVANA AZEREDO DA COSTA', '309207', '2023/2'),
('18200866', 'HENRIQUE PACHECO PERES', '309159', '2023/2'),
('18101250', 'EDUARDA PERAZZO BRAVO DE SOUZA', '309221', '2023/2'),
('17201564', 'AMANDA DA SILVA OLIVEIRA', '309207', '2023/2'),
('13200160', 'CAMILA SIMONAGGIO', '309221', '2023/2'),
('18200822', 'GABRIELA KRAEMER', '309159', '2023/2'),
('18200853', 'GUILHERME SCHEEREN FIGUEIREDO', '309159', '2023/2'),
('18103459', 'GABRIELA PEGLOW CRESPO', '309207', '2023/2'),
('18102810', 'LARISSA VIANA DE OLIVEIRA', '309221', '2023/2'),
('18200853', 'GUILHERME SCHEEREN FIGUEIREDO', '309151', '2023/2'),
('18103162', 'NATHALIA MADUREIRA AREJANO', '309207', '2023/2'),
('18201051', 'ISABELA ROCHA STEIMBRUCH', '309159', '2023/2'),
('18102727', 'DANIEL HUTTNER BORK', '309207', '2023/2'),
('18101250', 'EDUARDA PERAZZO BRAVO DE SOUZA', '309207', '2023/2'),
('18200747', 'MATEUS GAYA DOS SANTOS', '309159', '2023/2'),
('16200954', 'LUCAS NATHAN NASCIMENTO DA LUZ', '309207', '2023/2'),
('16200954', 'LUCAS NATHAN NASCIMENTO DA LUZ', '309221', '2023/2'),
('17200446', 'LUCIANO MONTEZZANO RIOS BACCHIERI', '309221', '2023/2'),
('18103162', 'NATHALIA MADUREIRA AREJANO', '309221', '2023/2'),
('18105076', 'VAGNER MORALES MACHADO JUNIOR', '309221', '2023/2'),
('18100871', 'VICTORIA VACARI DE BRUM', '309221', '2023/2'),
('18102881', 'VINICIUS PEREIRA BALONEQUE', '309221', '2023/2'),
('17201564', 'AMANDA DA SILVA OLIVEIRA', '309268', '2023/2'),
('17200659', 'BIANCA TELES DA COSTA', '309268', '2023/2'),
('16103110', 'CRISTOPHER DAVI GRIEP', '309268', '2023/2'),
('18102727', 'DANIEL HUTTNER BORK', '309268', '2023/2'),
('18101250', 'EDUARDA PERAZZO BRAVO DE SOUZA', '309268', '2023/2'),
('18103459', 'GABRIELA PEGLOW CRESPO', '309268', '2023/2'),
('18101206', 'GABRIEL LIMA BRAZ', '309268', '2023/2'),
('15200888', 'IVANA AZEREDO DA COSTA', '309268', '2023/2'),
('18101181', 'JULIA SEDREZ DE SOUZA', '309268', '2023/2'),
('15201717', 'LUAN DA FONSECA GONCALVES', '309268', '2023/2'),
('16200954', 'LUCAS NATHAN NASCIMENTO DA LUZ', '309268', '2023/2'),
('17200446', 'LUCIANO MONTEZZANO RIOS BACCHIERI', '309268', '2023/2'),
('18103162', 'NATHALIA MADUREIRA AREJANO', '309268', '2023/2'),
('15100785', 'RAFAELA FAVRETTO MORAES', '309268', '2023/2'),
('18105076', 'VAGNER MORALES MACHADO JUNIOR', '309268', '2023/2'),
('18102881', 'VINICIUS PEREIRA BALONEQUE', '309268', '2023/2'),
('22103167', 'DIELY DA SILVEIRA GOUVEA', '308162', '2023/2'),
('22103330', 'ELIAS JOAQUIM VÖLZ BARBOSA', '308162', '2023/2'),
('20200574', 'EMILIO COELHO SILVA', '308162', '2023/2'),
('22100335', 'GUILHERME BRITO QUEIROZ DA SILVA', '308162', '2023/2'),
('22101638', 'JESSICA DE VARGAS BOSENBECKER', '308162', '2023/2'),
('22103110', 'JORDANA DOS SANTOS DUARTE', '308162', '2023/2'),
('21201272', 'LETICIA NUNES FRANCO', '308162', '2023/2'),
('22104465', 'LUIZA CENTENO NALERIO', '308162', '2023/2'),
('22103481', 'NATALIA COLLARES EBERT HAMM', '308162', '2023/2'),
('21202302', 'RAYANE DOS SANTOS CARDOSO', '308162', '2023/2'),
('22102767', 'SAMARY DA SILVA GASSEN', '308162', '2023/2'),
('22104429', 'VIRGINIA POGORZELSKI DE VARGAS', '308162', '2023/2'),
('22102769', 'VITOR GABRIEL DA SILVA', '308162', '2023/2'),
('22103112', 'YASMIN PENELUC ROCHA', '308162', '2023/2'),
('18200824', 'AMANDA TONETA PRUX', '309154', '2023/2'),
('17103708', 'ANA PAULA SANTANA GARCIA', '309154', '2023/2'),
('18200108', 'ANTONIO MARCOS GONCALVES DUARTE', '309154', '2023/2'),
('18200157', 'EDUARDA NORENBERG HEIDMANN', '309154', '2023/2'),
('18200822', 'GABRIELA KRAEMER', '309154', '2023/2'),
('18200107', 'GABRIEL TWARDOWSKI DA ROCHA', '309154', '2023/2'),
('18201045', 'GIOVANNA BOFF PADILHA', '309154', '2023/2'),
('18201051', 'ISABELA ROCHA STEIMBRUCH', '309154', '2023/2'),
('18200739', 'JAQUELINE DE MEDEIROS LORENZET', '309154', '2023/2'),
('18201109', 'JULIA RODRIGUES BURKERT', '309154', '2023/2'),
('12200120', 'LIGIA EDUARDA KOLLING LERMEN', '309154', '2023/2'),
('18200823', 'LUIZA SOUZA SCHMIDT', '309154', '2023/2'),
('18200105', 'MARIANA PIRES LEMOS', '309154', '2023/2'),
('18200110', 'NATALIA BRITO SOARES', '309154', '2023/2'),
('18200913', 'NELSON MARTINS SOARES SOBRINHO', '309154', '2023/2'),
('18201098', 'THAINA DIAS SCHOLANTE', '309154', '2023/2'),
('18102814', 'ALICE EBERSOL AVILA', '309212', '2023/2'),
('18100654', 'AMANDA DOS SANTOS FIGUEIREDO', '309212', '2023/2'),
('18101299', 'ANA JULIA LABRES', '309212', '2023/2'),
('18101179', 'CINTHIA FONSECA ARAUJO', '309212', '2023/2'),
('18103930', 'FERNANDA FONTES DE FREITAS', '309212', '2023/2'),
('16201006', 'FERNANDA MENDES OLIVEIRA', '309212', '2023/2'),
('18102739', 'GABRIELA SCHNEID RIOS', '309212', '2023/2'),
('18105072', 'ISABELLA DALBEM GIANECHINI', '309212', '2023/2'),
('17101788', 'JOAO ARZELINDO PEREIRA NETO', '309212', '2023/2'),
('18102596', 'LARISSA DE OLIVEIRA PRIMO ALVES', '309212', '2023/2'),
('18102810', 'LARISSA VIANA DE OLIVEIRA', '309212', '2023/2'),
('18102654', 'LUIZA FELIX FONSECA', '309212', '2023/2'),
('18105023', 'MICHAELLY RICARDO VIEIRA', '309212', '2023/2'),
('18101407', 'NATANA BIERHALS OTTO', '309212', '2023/2'),
('18101276', 'PEDRO SCHWARTZ KALIL PEREIRA', '309212', '2023/2'),
('18100871', 'VICTORIA VACARI DE BRUM', '309212', '2023/2'),
('18102814', 'ALICE EBERSOL AVILA', '309223', '2023/2'),
('18100654', 'AMANDA DOS SANTOS FIGUEIREDO', '309223', '2023/2'),
('18101299', 'ANA JULIA LABRES', '309223', '2023/2'),
('18101179', 'CINTHIA FONSECA ARAUJO', '309223', '2023/2'),
('16103110', 'CRISTOPHER DAVI GRIEP', '309223', '2023/2'),
('16201006', 'FERNANDA MENDES OLIVEIRA', '309223', '2023/2'),
('18102739', 'GABRIELA SCHNEID RIOS', '309223', '2023/2'),
('18105072', 'ISABELLA DALBEM GIANECHINI', '309223', '2023/2'),
('17101788', 'JOAO ARZELINDO PEREIRA NETO', '309223', '2023/2'),
('18102814', 'ALICE EBERSOL AVILA', '309269', '2023/2'),
('18101407', 'NATANA BIERHALS OTTO', '309223', '2023/2'),
('18101276', 'PEDRO SCHWARTZ KALIL PEREIRA', '309223', '2023/2'),
('18102654', 'LUIZA FELIX FONSECA', '309223', '2023/2'),
('15100785', 'RAFAELA FAVRETTO MORAES', '309223', '2023/2'),
('15201717', 'LUAN DA FONSECA GONCALVES', '309223', '2023/2'),
('18105023', 'MICHAELLY RICARDO VIEIRA', '309223', '2023/2'),
('18101179', 'CINTHIA FONSECA ARAUJO', '309269', '2023/2'),
('21201915', 'CANDIDO FELIPE MENDONCA FERNANDES', '308163', '2023/2'),
('18100654', 'AMANDA DOS SANTOS FIGUEIREDO', '309269', '2023/2'),
('18101299', 'ANA JULIA LABRES', '309269', '2023/2'),
('18102596', 'LARISSA DE OLIVEIRA PRIMO ALVES', '309223', '2023/2'),
('18103930', 'FERNANDA FONTES DE FREITAS', '309269', '2023/2'),
('16201006', 'FERNANDA MENDES OLIVEIRA', '309269', '2023/2'),
('22104239', 'LUCAS SPECHET COLARES', '308163', '2023/2'),
('18102810', 'LARISSA VIANA DE OLIVEIRA', '309269', '2023/2'),
('18102654', 'LUIZA FELIX FONSECA', '309269', '2023/2'),
('20202895', 'EDUARDA VENZKE VIEIRA DA CUNHA', '308163', '2023/2'),
('18105023', 'MICHAELLY RICARDO VIEIRA', '309269', '2023/2'),
('17101788', 'JOAO ARZELINDO PEREIRA NETO', '309269', '2023/2'),
('18105072', 'ISABELLA DALBEM GIANECHINI', '309269', '2023/2'),
('18102596', 'LARISSA DE OLIVEIRA PRIMO ALVES', '309269', '2023/2'),
('21200841', 'FERNANDA SCHAITEL FIGUEIREDO MEDEIRO', '308163', '2023/2'),
('22103482', 'JULIANO ZIMMERMANN OLIVEIRA', '308163', '2023/2'),
('18100871', 'VICTORIA VACARI DE BRUM', '309269', '2023/2'),
('18101276', 'PEDRO SCHWARTZ KALIL PEREIRA', '309269', '2023/2'),
('19200157', 'JADE HONNICKE DUARTE', '308163', '2023/2'),
('22100330', 'BEATRIZ PALLA SANCHES', '308163', '2023/2'),
('20202025', 'JULIANA LIMA DO AMARAL', '308163', '2023/2'),
('18101407', 'NATANA BIERHALS OTTO', '309269', '2023/2'),
('18102739', 'GABRIELA SCHNEID RIOS', '309269', '2023/2'),
('19201905', 'NATALIA BRODT SOARES', '308163', '2023/2'),
('20100648', 'NATALI PEREIRA CASSAIS', '308163', '2023/2'),
('19201318', 'PAULA JESKE DA FONSECA', '308163', '2023/2'),
('21201367', 'PEDRO BRUM DE ARMAS', '308163', '2023/2'),
('22103486', 'RENAN CAVALHEIRO FREITAS', '308163', '2023/2'),
('20104580', 'Stella Parada Santos Gallo Corrêa', '308163', '2023/2'),
('21201485', 'THAILANE CORREA DE OLIVEIRA', '308163', '2023/2'),
('20201113', 'VANESSA BORGES AGUERO', '308163', '2023/2'),
('21202295', 'OTAVIO BORGES MADRUGA DE LIMA ', '308163', '2023/2'),
('20200869', 'ANDREAS PEDREIRA VERNETTI', '308164', '2023/2'),
('21201914', 'AUGUSTO BRIZOLA NACHTIGALL', '308164', '2023/2'),
('21201480', 'BRUNA MADRUGA TABELIAO', '308164', '2023/2'),
('21201520', 'BRUNO PIETRO TORRES', '308164', '2023/2'),
('21202296', 'Cauane Aires de Souza', '308164', '2023/2'),
('21202303', 'DANIELA FARIAS ALDADO ', '308164', '2023/2'),
('21200593', 'FERNANDO ROSINHA NUNES FILHO', '308164', '2023/2'),
('21201482', 'Inajara Marcela Grenzel Dal Molin', '308164', '2023/2'),
('21201053', 'JULIA RAMALHO DIAS', '308164', '2023/2'),
('21200594', 'JULIA VITORIA LOPES MOTA', '308164', '2023/2'),
('21201916', 'LARISSA SCHWARTZ RADATZ', '308164', '2023/2'),
('21201483', 'MARIA MANOELA DE MOURA RUAS', '308164', '2023/2'),
('21201312', 'MURILO DE ARAUJO ALVES', '308164', '2023/2'),
('20100683', 'NICOLAS MOREIRA CARVALHO', '308164', '2023/2'),
('21201484', 'PIETRA SILVA DA ROSA', '308164', '2023/2'),
('20201959', 'TAYSSA DE VASCONCELOS PEREIRA', '308164', '2023/2'),
('22102364', 'VICTORIA JULIAN FERREIRA LIMA', '308164', '2023/2'),
('17200488', 'ROSIANE PEREIRA DE OLIVEIRA', '316772', '2023/2'),
('17200488', 'ROSIANE PEREIRA DE OLIVEIRA', '316934', '2023/2'),
('22103029', 'ANA MARIA DE OLIVEIRA', '308177', '2023/2'),
('22101884', 'ANDERSON DE OLIVEIRA FICKEL', '308177', '2023/2'),
('20200869', 'ANDREAS PEDREIRA VERNETTI', '308177', '2023/2'),
('22100330', 'BEATRIZ PALLA SANCHES', '308177', '2023/2'),
('22103167', 'DIELY DA SILVEIRA GOUVEA', '308177', '2023/2'),
('22100332', 'EDUARDA FOLHA FEDRIZZI', '308177', '2023/2'),
('22103330', 'ELIAS JOAQUIM VÖLZ BARBOSA', '308177', '2023/2'),
('19103028', 'FELIPE HENRIQUE MACHADO MACEDO', '308177', '2023/2'),
('21200841', 'FERNANDA SCHAITEL FIGUEIREDO MEDEIRO', '308177', '2023/2'),
('21200593', 'FERNANDO ROSINHA NUNES FILHO', '308177', '2023/2'),
('22100335', 'GUILHERME BRITO QUEIROZ DA SILVA', '308177', '2023/2'),
('21202334', 'HELENA STORCH DE SOUZA', '308177', '2023/2'),
('22103331', 'HENRIQUE ALMEIDA BORTT', '308177', '2023/2'),
('22101638', 'JESSICA DE VARGAS BOSENBECKER', '308177', '2023/2'),
('22103110', 'JORDANA DOS SANTOS DUARTE', '308177', '2023/2'),
('22103482', 'JULIANO ZIMMERMANN OLIVEIRA', '308177', '2023/2'),
('22102673', 'JULIA VENZKE SILVA', '308177', '2023/2'),
('22104354', 'LAURA AZAMBUJA FERNANDES', '308177', '2023/2'),
('21201272', 'LETICIA NUNES FRANCO', '308177', '2023/2'),
('22104239', 'LUCAS SPECHET COLARES', '308177', '2023/2'),
('22104465', 'LUIZA CENTENO NALERIO', '308177', '2023/2'),
('19201905', 'NATALIA BRODT SOARES', '308177', '2023/2'),
('22103481', 'NATALIA COLLARES EBERT HAMM', '308177', '2023/2'),
('20100683', 'NICOLAS MOREIRA CARVALHO', '308177', '2023/2'),
('21202295', 'OTAVIO BORGES MADRUGA DE LIMA ', '308177', '2023/2'),
('19201318', 'PAULA JESKE DA FONSECA', '308177', '2023/2'),
('22103256', 'PEDRO AFONSO MACHADO NUNES', '308177', '2023/2'),
('21202302', 'RAYANE DOS SANTOS CARDOSO', '308177', '2023/2'),
('22103486', 'RENAN CAVALHEIRO FREITAS', '308177', '2023/2'),
('22102767', 'SAMARY DA SILVA GASSEN', '308177', '2023/2'),
('21201485', 'THAILANE CORREA DE OLIVEIRA', '308177', '2023/2'),
('20201113', 'VANESSA BORGES AGUERO', '308177', '2023/2'),
('22104429', 'VIRGINIA POGORZELSKI DE VARGAS', '308177', '2023/2'),
('22102364', 'VICTORIA JULIAN FERREIRA LIMA', '308177', '2023/2'),
('22102769', 'VITOR GABRIEL DA SILVA', '308177', '2023/2'),
('22103112', 'YASMIN PENELUC ROCHA', '308177', '2023/2'),
('19200231', 'AFONSO DA GAMA', '308178', '2023/2'),
('22103029', 'ANA MARIA DE OLIVEIRA', '308178', '2023/2'),
('22101884', 'ANDERSON DE OLIVEIRA FICKEL', '308178', '2023/2'),
('22100330', 'BEATRIZ PALLA SANCHES', '308178', '2023/2'),
('22103167', 'DIELY DA SILVEIRA GOUVEA', '308178', '2023/2'),
('22100332', 'EDUARDA FOLHA FEDRIZZI', '308178', '2023/2'),
('22103330', 'ELIAS JOAQUIM VÖLZ BARBOSA', '308178', '2023/2'),
('22103489', 'ERIKA RODRIGUES MACHADO', '308178', '2023/2'),
('22100335', 'GUILHERME BRITO QUEIROZ DA SILVA', '308178', '2023/2'),
('22202724', 'HELENA HERNANDES MATHEUS', '308178', '2023/2'),
('22103331', 'HENRIQUE ALMEIDA BORTT', '308178', '2023/2'),
('21202334', 'HELENA STORCH DE SOUZA', '308178', '2023/2'),
('22101638', 'JESSICA DE VARGAS BOSENBECKER', '308178', '2023/2'),
('23200449', 'JOAO GABRIEL MUNHOZ PEREIRA', '308178', '2023/2'),
('22103110', 'JORDANA DOS SANTOS DUARTE', '308178', '2023/2'),
('22103482', 'JULIANO ZIMMERMANN OLIVEIRA', '308178', '2023/2'),
('22102673', 'JULIA VENZKE SILVA', '308178', '2023/2'),
('21202179', 'LETICIA DA SILVA RIOS', '308178', '2023/2'),
('22104354', 'LAURA AZAMBUJA FERNANDES', '308178', '2023/2'),
('22104239', 'LUCAS SPECHET COLARES', '308178', '2023/2'),
('22104465', 'LUIZA CENTENO NALERIO', '308178', '2023/2'),
('22104261', 'Marcelle Moreira Peres', '308178', '2023/2'),
('23200450', 'MARCELO ANTONIO SARTURI', '308178', '2023/2'),
('22103481', 'NATALIA COLLARES EBERT HAMM', '308178', '2023/2'),
('21202295', 'OTAVIO BORGES MADRUGA DE LIMA ', '308178', '2023/2'),
('19201318', 'PAULA JESKE DA FONSECA', '308178', '2023/2'),
('22103256', 'PEDRO AFONSO MACHADO NUNES', '308178', '2023/2'),
('21202302', 'RAYANE DOS SANTOS CARDOSO', '308178', '2023/2'),
('22103486', 'RENAN CAVALHEIRO FREITAS', '308178', '2023/2'),
('22203368', 'SABRINA VALERIO MARQUES', '308178', '2023/2'),
('22102767', 'SAMARY DA SILVA GASSEN', '308178', '2023/2'),
('22202730', 'Veronica Salvador ', '308178', '2023/2'),
('22102364', 'VICTORIA JULIAN FERREIRA LIMA', '308178', '2023/2'),
('22104429', 'VIRGINIA POGORZELSKI DE VARGAS', '308178', '2023/2'),
('22102769', 'VITOR GABRIEL DA SILVA', '308178', '2023/2'),
('20102973', 'VITORIA DA CRUZ SILVEIRA', '308178', '2023/2'),
('22103112', 'YASMIN PENELUC ROCHA', '308178', '2023/2'),
('19100545', 'BRUNA ZEMBRUSKI GOMES', '308458', '2023/2'),
('16103110', 'CRISTOPHER DAVI GRIEP', '308458', '2023/2'),
('19101706', 'FELIPE AUGUSTO KRAVCHENKO CARDOSO', '308458', '2023/2'),
('18102516', 'GIOVANNA BERTOLLO TAMBARA', '308458', '2023/2'),
('15200888', 'IVANA AZEREDO DA COSTA', '308458', '2023/2'),
('15102080', 'IZABEL GONCALVES DE SOUZA', '308458', '2023/2'),
('19103050', 'JULIA PEREIRA DA COSTA', '308458', '2023/2'),
('19103055', 'KAIENA PALOMA SCHIERHOLT', '308458', '2023/2'),
('19103188', 'LARISSA WULFF OLIVEIRA', '308458', '2023/2'),
('18102598', 'LIVIA SILVEIRA BARCELLOS', '308458', '2023/2'),
('15201717', 'LUAN DA FONSECA GONCALVES', '308458', '2023/2'),
('19102617', 'MARIA EDUARDA ARMINDO DE SOUZA', '308458', '2023/2'),
('19102280', 'MARIA EDUARDA DALMEIDA PAES', '308458', '2023/2'),
('19100521', 'MARIA EDUARDA PERES SCHMALFUSS', '308458', '2023/2'),
('19200609', 'OTAVIO PEDRO DOS SANTOS', '308458', '2023/2'),
('19103407', 'PATRICK ARINOS DIAS FARIAS', '308458', '2023/2'),
('19103423', 'THALIA ROSA DO NASCIMENTO', '308458', '2023/2'),
('16200181', 'THIAGO FILLIPE SAMPAIO DE SOUSA', '308458', '2023/2');

-- --------------------------------------------------------

--
-- Table structure for table `servidores`
--

CREATE TABLE `servidores` (
  `id` int(11) NOT NULL,
  `cpf_servidor` varchar(50) NOT NULL,
  `nome_servidor` varchar(255) NOT NULL,
  `acessoUsuário` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solicitacao_materiais`
--

CREATE TABLE `solicitacao_materiais` (
  `id_solicitacao` bigint(20) NOT NULL,
  `setor` varchar(30) NOT NULL,
  `nome_solicitante` varchar(40) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `data_pedido` date NOT NULL,
  `data_tramite` date DEFAULT NULL,
  `lista_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lista_materiais` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lista_qtd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `statusSolicitacao` varchar(22) NOT NULL,
  `ids_atendidos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `qtd_atendida` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `obs_tramite` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `solicitacao_materiais`
--

INSERT INTO `solicitacao_materiais` (`id_solicitacao`, `setor`, `nome_solicitante`, `id_solicitante`, `data_pedido`, `data_tramite`, `lista_ids`, `lista_materiais`, `lista_qtd`, `statusSolicitacao`, `ids_atendidos`, `qtd_atendida`, `obs_tramite`) VALUES
(59, 'Clínica 1º Andar - Sul', 'Beltrano', 123456, '2023-09-26', NULL, '1', 'Fosfato de zinco', '1', 'Solicitado', '0', NULL, NULL),
(60, 'Clínica 1º Andar - Sul', 'Fulano', 987654, '2023-09-26', NULL, '1,4', 'Fosfato de zinco,Teste', '1,2', 'Solicitado', '0', NULL, NULL),
(61, 'Clínica 1º Andar - Sul', 'Beltrano', 123456, '2023-09-26', NULL, '11,1', 'rolo de algodão,Fosfato de zinco', '2,1', 'Solicitado', '0', NULL, NULL),
(62, 'Clínica Oeste', 'Fulano', 987654, '2023-09-26', NULL, '1,20', 'Fosfato de zinco,ionomero de vidro', '1,3', 'Solicitado', '0', NULL, NULL),
(63, 'Clínica Oeste', 'Beltrano', 123456, '2023-09-26', NULL, '20,19', 'ionomero de vidro,testedenovo', '3,2', 'Solicitado', '0', NULL, NULL),
(64, 'Clínica 4º Andar', 'Ciclano', 654321, '2023-09-26', NULL, '24,26', 'silicone de condensação,resina acrílica', '1,5', 'Solicitado', '0', NULL, NULL),
(65, 'Laboratórios pré-clínica', 'Ciclano', 654321, '2023-09-26', '2023-10-03', '24,26,23,22', 'silicone de condensação,resina acrílica,polieter,alginato', '1,5,2,2', 'Parcialmente atendido', '24,26,23,22', '1,5,2,2', 'Observação teste'),
(66, 'Clínica 1º Andar - Sul', 'Fulano', 987654, '2023-09-27', NULL, '7,5', 'teste3,teste2', '1,2', 'Solicitado', '0', NULL, NULL),
(67, 'Clínica Oeste', 'João da Silva', 321789, '2023-10-05', NULL, '3', 'Resina Composta cor A1', '1', 'Solicitado', NULL, NULL, NULL),
(68, 'Clínica Oeste', 'João da Silva', 321789, '2023-10-05', NULL, '2,3,21,22', 'Resina Acrílica,Resina Composta cor A1,fosfato de zinco,alginato', '3,1,2,1', 'Solicitado', NULL, NULL, NULL),
(69, 'Clínica 4º Andar', 'João da Silva', 321789, '2023-10-05', NULL, '1,17,13', 'Fosfato de zinco,testematerial,bbbbbbbbb', '1,2,2', 'Solicitado', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Matricula` varchar(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `Matricula`, `Nome`, `Tipo`) VALUES
(1, 'Triagem', 'Triagem', 'Triagem'),
(2, 'Mateus', 'Mateus', 'Administrador'),
(3, 'Administrador', 'Administrador', 'Administrador'),
(4, '2010125', 'Pedro', 'Aluno'),
(5, '2010123', 'Aluno', 'Aluno'),
(6, '14200737', 'Bruno Souza', 'Aluno'),
(7, 'Responsavel', 'Responsavel', 'Responsavel'),
(8, 'Carlos Santana', 'Carlos Santana', 'Responsavel'),
(9, 'João', 'João da Silva', 'Responsavel'),
(10, 'Daniela', 'Daniela Goes', 'Aluno'),
(11, 'Eduardo', 'Eduardo Santos', 'Aluno'),
(12, 'Fabiana', 'Fabiana Silva', 'Aluno'),
(13, 'Henrique', 'Henrique Cruz', 'Aluno'),
(14, 'Gustavo', 'Gustavo Dantas', 'Aluno'),
(15, 'Ivana', 'Ivana de Sá', 'Aluno'),
(16, 'Sandra', 'Sandra Fernandes', 'Aluno'),
(17, 'Isabela', 'Isabela Souza', 'Aluno'),
(18, 'William', 'William Castro', 'Aluno'),
(19, 'Renato', 'Ivana de Sá', 'Aluno'),
(20, 'Leandro', 'Leandro Rios', 'Aluno'),
(21, 'Patricia', 'Patricia Silva', 'Aluno'),
(22, 'Ricardo', 'Ricardo Alves', 'Aluno'),
(23, 'Lucas', 'Lucas Lima', 'Aluno'),
(24, 'Enfermagem', 'Enfermagem', 'Enfermagem');

-- --------------------------------------------------------

--
-- Table structure for table `vinculo_aluno_paciente`
--

CREATE TABLE `vinculo_aluno_paciente` (
  `id` int(11) NOT NULL,
  `id_demanda` varchar(255) NOT NULL,
  `CPF_paciente` varchar(255) NOT NULL,
  `Matricula_aluno` varchar(255) NOT NULL,
  `Turma` varchar(255) NOT NULL,
  `Complexidade` varchar(255) NOT NULL,
  `Especialidade` varchar(255) NOT NULL,
  `Descrição` varchar(255) NOT NULL,
  `StatusVinculo` varchar(255) NOT NULL,
  `inicioVinculo` date DEFAULT NULL,
  `fimVinculo` date DEFAULT NULL,
  `motivoDesvinculacao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vinculo_aluno_paciente`
--

INSERT INTO `vinculo_aluno_paciente` (`id`, `id_demanda`, `CPF_paciente`, `Matricula_aluno`, `Turma`, `Complexidade`, `Especialidade`, `Descrição`, `StatusVinculo`, `inicioVinculo`, `fimVinculo`, `motivoDesvinculacao`) VALUES
(43, '3', '112.289.390-63', '14200737', '308403', 'Média', 'Periodontia', 'Raspagem subgengival em todos os sextantes', 'Ativo', '2023-11-09', '2023-11-17', 'Desvincular paciente'),
(45, '4', '112.289.390-63', '14200737', '308212', 'Média', 'Cirurgia', 'Exodontia do 38', 'Inativo', '2023-11-16', '2023-11-17', 'Desvincular paciente');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda-clinicas`
--
ALTER TABLE `agenda-clinicas`
  ADD PRIMARY KEY (`id_agendamento`);

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avaliacoesatendimento`
--
ALTER TABLE `avaliacoesatendimento`
  ADD PRIMARY KEY (`id_avaliacao`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encaminhamentos`
--
ALTER TABLE `encaminhamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrevista`
--
ALTER TABLE `entrevista`
  ADD PRIMARY KEY (`id_entrevista`);

--
-- Indexes for table `entrevistaped`
--
ALTER TABLE `entrevistaped`
  ADD PRIMARY KEY (`id_entrevista`);

--
-- Indexes for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id_especialidade`);

--
-- Indexes for table `historicoatendimentos`
--
ALTER TABLE `historicoatendimentos`
  ADD PRIMARY KEY (`id_atendimentos`);

--
-- Indexes for table `materiais`
--
ALTER TABLE `materiais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plano_tto`
--
ALTER TABLE `plano_tto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `procedimentos_sus`
--
ALTER TABLE `procedimentos_sus`
  ADD PRIMARY KEY (`cod_sus`);

--
-- Indexes for table `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`id_projeto`);

--
-- Indexes for table `regulacaointerna`
--
ALTER TABLE `regulacaointerna`
  ADD PRIMARY KEY (`id_regulacao`);

--
-- Indexes for table `servidores`
--
ALTER TABLE `servidores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solicitacao_materiais`
--
ALTER TABLE `solicitacao_materiais`
  ADD PRIMARY KEY (`id_solicitacao`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vinculo_aluno_paciente`
--
ALTER TABLE `vinculo_aluno_paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda-clinicas`
--
ALTER TABLE `agenda-clinicas`
  MODIFY `id_agendamento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `avaliacoesatendimento`
--
ALTER TABLE `avaliacoesatendimento`
  MODIFY `id_avaliacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `encaminhamentos`
--
ALTER TABLE `encaminhamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `entrevista`
--
ALTER TABLE `entrevista`
  MODIFY `id_entrevista` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `entrevistaped`
--
ALTER TABLE `entrevistaped`
  MODIFY `id_entrevista` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id_especialidade` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `historicoatendimentos`
--
ALTER TABLE `historicoatendimentos`
  MODIFY `id_atendimentos` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `materiais`
--
ALTER TABLE `materiais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `plano_tto`
--
ALTER TABLE `plano_tto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `projetos`
--
ALTER TABLE `projetos`
  MODIFY `id_projeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `regulacaointerna`
--
ALTER TABLE `regulacaointerna`
  MODIFY `id_regulacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `servidores`
--
ALTER TABLE `servidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solicitacao_materiais`
--
ALTER TABLE `solicitacao_materiais`
  MODIFY `id_solicitacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vinculo_aluno_paciente`
--
ALTER TABLE `vinculo_aluno_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `update_falta` ON SCHEDULE EVERY 1 DAY STARTS '2023-10-12 00:01:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `agenda-clinicas` SET status_agendamento = 'Faltou' WHERE status_agendamento = 'Agendado' AND data_agendamento < CURDATE()$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
