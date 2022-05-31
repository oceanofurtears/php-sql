<?php
    function getUserByCityId($id){
    $conn = mysqli_connect('localhost:3306', 'root', 'root', 'practica1' );

    if($conn){
        echo 'Everything is fine';
    } else {
        echo 'Connection error:' . mysqli_connect_error();
    }
    $sql = "SELECT * FROM Users WHERE City_id = '$id'";
    if($result = $conn->query($sql)){ 
        $rowsCount = $result->num_rows;
        if ($rowsCount !=0){
            echo "<table><tr><th>ID</th><th>Name</th><th>Email</th><th>Phone</th>";
            foreach($result as $row){
            echo "<tr>";
                echo "<td>" . $row["id"] . "</td>";
                echo "<td>" . $row["Name"] . "</td>";
                echo "<td>" . $row["Email"] . "</td>";
                echo "<td>" . $row["Phone"] . "</td>";
            echo "</tr>";    
        }
            echo "</table>";
        }
        else {
        echo "<h4>";
        echo "Пользователей из такого города нет " ;
    $result->free();
    } 
    }
    }
    $cityid=(int)readline('Enter an Id:');
    getUserByCityId($cityid);

?>

