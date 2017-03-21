<?php

require_once "../../resources/Conexao.class.php";

header("application/json");

$sqlCourses = "SELECT * FROM courses";

$stCourses = Conexao::getInstance()->prepare($sqlCourses);
$stCourses->execute();
$qryCourses = $stCourses->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($qryCourses, JSON_PRETTY_PRINT);