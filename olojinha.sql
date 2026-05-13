-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2026 at 03:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olojinha`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `catid` int NOT NULL,
  `catnome` varchar(150) DEFAULT NULL,
  `catativo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`catid`, `catnome`, `catativo`) VALUES
(1, 'Acessórios para Veículos', 1),
(2, 'Agro', 1),
(3, 'Alimentos e Bebidas', 1),
(4, 'Pet Shop', 1),
(5, 'Antiguidades e Coleções', 1),
(6, 'Arte, Papelaria e Armarinho', 1),
(7, 'Bebês', 1),
(8, 'Beleza e Cuidado Pessoal', 1),
(9, 'Brinquedos e Hobbies', 1),
(10, 'Calçados, Roupas e Bolsas', 1),
(11, 'Câmeras e Acessórios', 1),
(12, 'Carros, Motos e Outros', 1),
(13, 'Casa, Móveis e Decoração', 1),
(14, 'Celulares e Telefones', 1),
(15, 'Construção', 1),
(16, 'Eletrodomésticos', 1),
(17, 'Eletrônicos, Áudio e Vídeo', 1),
(18, 'Esportes e Fitness', 1),
(19, 'Ferramentas', 1),
(20, 'Festas e Lembrancinhas', 1),
(21, 'Games', 1),
(22, 'Imóveis', 1),
(23, 'Indústria e Comércio', 1),
(24, 'Informática', 1),
(25, 'Ingressos', 1),
(26, 'Instrumentos Musicais', 1),
(27, 'Joias e Relógios', 1),
(28, 'Livros, Revistas e Comics', 1),
(29, 'Música, Filmes e Seriados', 1),
(30, 'Saúde', 1),
(31, 'Serviços', 1),
(32, 'Mais Categorias', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fotosproduto`
--

CREATE TABLE `fotosproduto` (
  `fotid` int NOT NULL,
  `fotcaminho` varchar(1024) DEFAULT NULL,
  `fotdescricao` varchar(150) DEFAULT NULL,
  `fotproid` int DEFAULT NULL,
  `fotprincipal` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fotosproduto`
--

INSERT INTO `fotosproduto` (`fotid`, `fotcaminho`, `fotdescricao`, `fotproid`, `fotprincipal`) VALUES
(1, 'imgprodutos/batom.jpg', '', 1, 1),
(2, 'imgprodutos/comedoura.jpg', '', 1, 1),
(3, 'imgprodutos/escova.jpg', '', 1, 1),
(4, 'imgprodutos/graminha.jpg', '', 1, 1),
(5, 'imgprodutos/iluminador.jpg', '', 1, 1), 
(6, 'imgprodutos/perfumefeminino.jpg', '', 1, 1),
(7, 'imgprodutos/perfumemasculino.jpg', '', 1, 1),
(8, 'imgprodutos/tunel.jpg', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `proid` int NOT NULL,
  `pronome` varchar(150) DEFAULT NULL,
  `prodescricao` varchar(1024) DEFAULT NULL,
  `provalorcusto` double DEFAULT NULL,
  `provalorvenda` double DEFAULT NULL,
  `proquantidade` int DEFAULT NULL,
  `prosubid` int DEFAULT NULL,
  `proativo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`proid`, `pronome`, `prodescricao`, `provalorcusto`, `provalorvenda`, `proquantidade`, `prosubid`, `proativo`) VALUES
INSERT INTO `produtos` (`pronome`, `prodescricao`, `provalorcusto`, `provalorvenda`, `proquantidade`, `prosubid`, `proativo`) VALUES 

-- MAIS 2 ITENS PARA COELHOS
('Escova Soft Grooming para Roedores', 'Escova com cerdas de nylon ultra macias projetada especificamente para a pele sensível dos coelhos. Remove o pelo morto de forma gentil, prevenindo a ingestão excessiva durante a autolimpeza e a formação de bolas de pelo no sistema digestivo. O cabo ergonômico emborrachado permite uma pegada firme para um momento de cuidado relaxante.', 15.00, 35.00, 20, 1, 1),

('Comedouro de Cerâmica Antiderrapante', 'Comedouro em cerâmica de alta densidade com pintura atóxica vitrificada, fácil de higienizar e resistente a bactérias. O peso do material impede que o coelho vire a tigela durante a alimentação, e o design de bordas baixas facilita o acesso à ração ou vegetais frescos sem causar desconforto aos bigodes do animal.', 22.00, 48.00, 15, 1, 1),

-- MAIS 2 ITENS PARA GATOS
('Túnel Retrátil Adventure Cat', 'Túnel extensível com estrutura de mola em aço carbono revestida por tecido de poliéster de alta resistência a rasgos. Possui três saídas estratégicas e um brinquedo suspenso de pena na extremidade para estimular a curiosidade e o instinto de caça. Pode ser dobrado facilmente para armazenamento, ocupando pouco espaço quando não está em uso.', 38.00, 75.00, 12, 2, 1),

('Graminha Natural para Gatos (Kit Cultivo)', 'Kit completo com substrato orgânico e sementes selecionadas de aveia e azevém, livres de agrotóxicos. A grama auxilia no processo de digestão e na eliminação natural de pelos ingeridos, além de fornecer vitaminas essenciais. Cresce em apenas 7 dias e oferece uma opção de lazer saudável para gatos que vivem exclusivamente em ambientes internos.', 8.50, 22.00, 40, 2, 1),

-- MAIS 2 ITENS DE MAQUIAGEM
('Batom Líquido Matte Long Stay', 'Batom líquido com pigmentação intensa e acabamento totalmente opaco que não transfere e não borra ao longo do dia. Sua fórmula exclusiva contém manteiga de karité, que mantém os lábios confortáveis e hidratados mesmo com o efeito matte. O aplicador anatômico permite um contorno preciso dos lábios com apenas uma camada.', 14.00, 32.00, 60, 3, 1),

('Iluminador Compacto Prismático', 'Pó iluminador ultra fino com tecnologia de micro-pérolas que se fundem à pele, criando um brilho radiante e natural sem marcar poros ou linhas de expressão. Pode ser construído em camadas para um efeito espelhado intenso ou aplicado levemente para um viço saudável "glow" de dentro para fora. Ideal para todos os tons de pele.', 28.00, 59.90, 25, 3, 1),

-- MAIS 2 ITENS DE PERFUME
('Body Splash Mystic Gardenia', 'Fragrância leve e refrescante com notas florais de gardênia branca e jasmim manga, harmonizadas com um toque sutil de pêssego e almíscar. Ideal para ser aplicado generosamente após o banho, proporcionando uma sensação de frescor prolongado e uma perfumação suave que dura horas na pele. Perfeito para o dia a dia.', 25.00, 55.00, 35, 4, 1),

('Perfume Masculino Iron Woods', 'Fragrância amadeirada intensa que combina a força do cedro e do sândalo com notas vibrantes de pimenta preta e toranja. No fundo, notas de couro e âmbar trazem sofisticação e uma masculinidade moderna. É um perfume de alta projeção, ideal para homens que buscam uma assinatura olfativa marcante e duradoura.', 110.00, 240.00, 10, 4, 1);
-- --------------------------------------------------------

--
-- Table structure for table `subcategorias`
--

CREATE TABLE `subcategorias` (
  `subid` int NOT NULL,
  `subnome` varchar(150) DEFAULT NULL,
  `subcatid` int DEFAULT NULL,
  `subativo` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subcategorias`
--

insert into subcategorias
(subnome,subcatid)
values
('Gatos',4),
('Coelhos',4),
('Maquiagem',8),
('Perfumes',8);
--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `fotosproduto`
--
ALTER TABLE `fotosproduto`
  ADD PRIMARY KEY (`fotid`),
  ADD KEY `fkfotproid` (`fotproid`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`proid`),
  ADD KEY `fkprosubid` (`prosubid`);

--
-- Indexes for table `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`subid`),
  ADD KEY `fksubcatid` (`subcatid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `catid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `fotosproduto`
--
ALTER TABLE `fotosproduto`
  MODIFY `fotid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `proid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `subid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fotosproduto`
--
ALTER TABLE `fotosproduto`
  ADD CONSTRAINT `fkfotproid` FOREIGN KEY (`fotproid`) REFERENCES `produtos` (`proid`);

--
-- Constraints for table `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fkprosubid` FOREIGN KEY (`prosubid`) REFERENCES `subcategorias` (`subid`);

--
-- Constraints for table `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD CONSTRAINT `fksubcatid` FOREIGN KEY (`subcatid`) REFERENCES `categorias` (`catid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
