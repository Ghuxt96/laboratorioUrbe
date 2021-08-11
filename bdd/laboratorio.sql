-- Base de datos: `laboratorio`
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lvl2_admin`
--

CREATE TABLE `lvl2_admin` (
  `lvtwname` varchar(100) NOT NULL,
  `lvtwusern` varchar(100) NOT NULL,
  `lvtwemail` varchar(200) NOT NULL,
  `lvtwpass` varchar(50) NOT NULL,
  `lvtwid` int(11) NOT NULL,
  `lvtwcdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lvl2_admin`
--

INSERT INTO `lvl2_admin` (`lvtwname`, `lvtwusern`, `lvtwemail`, `lvtwpass`, `lvtwid`, `lvtwcdate`) VALUES
('usuario', 'BasicAdmin', 'usuario@cweb.com', '4b67deeb9aba04a5b54632ad19934f26', 1, '2021-07-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patient`
--

CREATE TABLE `patient` (
  `pet_id` int(11) NOT NULL,
  `pet_reg_date` datetime DEFAULT current_timestamp(),
  `pet_fn` varchar(100) DEFAULT NULL,
  `pet_sn` varchar(100) DEFAULT NULL,
  `pet_addr` varchar(500) DEFAULT NULL,
  `pet_con` int(10) DEFAULT NULL,
  `pet_em` varchar(1000) DEFAULT NULL,
  `pet_gen` varchar(10) DEFAULT NULL,
  `pet_bd` date DEFAULT NULL,
  `pet_age` int(3) DEFAULT NULL,
  `pet_bg` varchar(3) DEFAULT NULL,
  `Pet_opdid` int(11) DEFAULT NULL,
  `Insert_admunname` varchar(100) DEFAULT NULL,
  `Update_sadmunname` varchar(100) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `patient`
--

INSERT INTO `patient` (`pet_id`, `pet_reg_date`, `pet_fn`, `pet_sn`, `pet_addr`, `pet_con`, `pet_em`, `pet_gen`, `pet_bd`, `pet_age`, `pet_bg`, `Pet_opdid`, `Insert_admunname`, `Update_sadmunname`, `update_date`) VALUES
(1, '20015-08-09 13:44:22', 'Juan', 'Galan', 'Calle 34 Carrera 17-23', 315462174, 'jgalan@cweb.com', 'Male', '1994-06-23', 26, 'A+', 1, 'urbeweb', NULL, NULL),
(2, '2049-08-11 14:59:13', 'Omar', 'Estrada', 'Carrera 22 N 23 14', 2147483647, 'oestrada@cweb.com', 'Male', '1993-06-08', 27, 'O+', 4, 'urbeweb', NULL, NULL),
(3, '2014-08-11 15:02:33', 'Julian', 'Cardozo', 'Calle 54 N 23 23', 301258794, 'jcardozo@cweb.com', 'Male', '1986-06-03', 34, 'O+', 2, 'urbeweb', NULL, NULL),
(4, '2046-08-11 15:05:06', 'Gustavo', 'Polania', 'Calle 101 N 23-234', 301654877, 'gpolania@cweb.com', 'Male', '1993-08-24', 27, 'B-', 6, 'urbeweb', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pet_invo`
--

CREATE TABLE `pet_invo` (
  `invo_id` int(11) NOT NULL,
  `invo_Pet_name` varchar(500) NOT NULL,
  `invo_pet_id` int(100) NOT NULL DEFAULT 1,
  `invo_pet_age` int(3) NOT NULL,
  `invo_date` date NOT NULL,
  `examA_charge` int(10) NOT NULL,
  `examB_charge` int(10) NOT NULL,
  `examC_charge` int(10) NOT NULL,
  `examD_charge` int(10) NOT NULL,
  `examE_charge` int(10) NOT NULL,
  `examF_charge` int(10) NOT NULL,
  `examG_charge` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pet_invo`
--

INSERT INTO `pet_invo` (`invo_id`, `invo_Pet_name`, `invo_pet_id`, `invo_pet_age`, `invo_date`, `examA_charge`, `examB_charge`, `examC_charge`, `examD_charge`, `examE_charge`, `examF_charge`,`examG_charge`) VALUES
(1, 'Juan Galan', 1, 26, '2019-08-10', 50000, 150000, 500, 200500, 343, 653, 343),
(2, 'Julian Cardozo', 3, 34, '2021-08-11', 125000, 254000, 500, 379500, 4355, 3563, 445);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `smfname` varchar(50) NOT NULL,
  `smlname` varchar(50) NOT NULL,
  `smtype` varchar(20) NOT NULL,
  `smbd` date NOT NULL,
  `smtel` varchar(15) NOT NULL,
  `smemail` varchar(200) NOT NULL,
  `smgender` varchar(6) NOT NULL,
  `smwoti` varchar(10) NOT NULL,
  `smaddr` varchar(600) NOT NULL,
  `instetd_by` varchar(100) DEFAULT NULL,
  `insterted_date` timestamp NULL DEFAULT current_timestamp(),
  `update_by` varchar(100) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `staff`
--

INSERT INTO `staff` (`staffID`, `smfname`, `smlname`, `smtype`, `smbd`, `smtel`, `smemail`, `smgender`, `smwoti`, `smaddr`, `instetd_by`, `insterted_date`, `update_by`, `update_date`) VALUES
(1, 'Dilan', 'Camargo', 'Doctor', '1997-06-10',  '3162584694', 'dcamargo@cweb.com', 'Male', 'Full', 'Calle 90 Carrera 22-70', 'urbeweb', '2020-08-09 18:42:42', 'configuroweb', '2021-08-10 05:19:38'),
(2, 'Juan', 'Cabrera', 'Doctor', '1981-06-01',  '3164578412', 'jcabrera@cweb.com', 'Male', 'Mañana', 'Calle 90 N 34-12', 'urbeweb', '2020-08-11 16:21:47', NULL, '2021-08-04 16:21:47'),
(3, 'Juan', 'Curubita', 'Doctor', '1975-09-22',  '3124568749', 'jcurubita@cweb.com', 'Male', 'Tarde', 'Calle 32 N 12.12', 'urbeweb', '2020-08-11 16:24:29', NULL, '2021-08-04 16:24:29'),
(4, 'Rosa', 'Almarales', 'Doctor', '1981-02-11',  '3018521234', 'ralmarales@cweb.com', 'Female', 'Tarde', 'Av 45 N 23-23', 'urbeweb', '2020-08-11 16:31:04', NULL, '2021-08-04 16:31:04'),
(5, 'Patricia', 'Perez', 'Enfermera', '1993-03-02',  '3169874657', 'pperez@cweb.com', 'Female', 'Mañana', 'Calle 45 N 18 18', 'urbeweb', '2020-08-11 16:47:04', NULL, '2021-08-04 16:47:04'),
(6, 'Karina', 'Corrales', 'Doctor', '1996-06-11',  '3235468719', 'kcorrales@cweb.com', 'Female', 'Full', 'Carrera 45 N 17-22', 'urbeweb', '2020-08-11 17:05:06', NULL, '2020108-04 17:05:06'),
(7, 'Felipe', 'Clavel', 'Other', '1981-11-25',  '3012659870', 'fclavel@cweb.com', 'Male', 'Evening', 'Calle 12 N 12 12', 'urbeweb', '2020-08-11 20:07:44', NULL, '2021-08-04 20:07:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sup_admin`
--

CREATE TABLE `sup_admin` (
  `sadid` int(11) NOT NULL,
  `sadiun` varchar(20) NOT NULL,
  `sadipw` varchar(500) NOT NULL,
  `sadem` varchar(50) NOT NULL,
  `saname` varchar(100) DEFAULT NULL,
  `cret_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sup_admin`
--

INSERT INTO `sup_admin` (`sadid`, `sadiun`, `sadipw`, `sadem`, `saname`, `cret_date`) VALUES
(1, 'urbeadmin', '4b67deeb9aba04a5b54632ad19934f26', 'msevillab@gmail.com', 'Mauricio Sevilla', '2021-08-06 22:49:20');

--
-- Índices para tablas volcadas

-- Indices de la tabla `lvl2_admin`
--
ALTER TABLE `lvl2_admin`
  ADD PRIMARY KEY (`lvtwid`);

--
-- Indices de la tabla `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `Pet_opdid` (`Pet_opdid`);

--
-- Indices de la tabla `pet_invo`
--
ALTER TABLE `pet_invo`
  ADD PRIMARY KEY (`invo_id`),
  ADD KEY `invo_pet_id` (`invo_pet_id`);

--
-- Indices de la tabla `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Indices de la tabla `sup_admin`
--
ALTER TABLE `sup_admin`
  ADD PRIMARY KEY (`sadid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lvl2_admin`
--
ALTER TABLE `lvl2_admin`
  MODIFY `lvtwid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `patient`
--
ALTER TABLE `patient`
  MODIFY `pet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pet_invo`
--
ALTER TABLE `pet_invo`
  MODIFY `invo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sup_admin`
--
ALTER TABLE `sup_admin`
  MODIFY `sadid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;
