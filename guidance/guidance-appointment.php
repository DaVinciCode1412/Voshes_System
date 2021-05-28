<?php
    include('header.php');
?>

        
                <div class="container-fluid">
                    <div class="d-sm-flex justify-content-between align-items-center mb-4">
                        <h3 class="text-dark" style="font-family: ABeeZee, sans-serif;color: rgb(29,29,31);margin-bottom: -5px;"><strong>Appointments</strong></h3>
                    </div>
                </div>
                <hr style="color: rgb(62,62,64);">

                <div class="container " style="width: 95%;">
                    <table class="table table-hover table-bordered">
                        <tr class="table-success">
                            <th>Name</th>
                            <th>Date</th>
                            <th>Time</th>
                        </tr>
                        <?php
                            $id = $_SESSION['user_id'];
                            $sql = "select * from user_appointment where counselor_id = $id order by appointment_date asc, appointment_time asc ";
                            $result = $con->query($sql);

                            if ($result) {
                                while($row = $result->fetch_assoc()){
                                    $id = $row['user_ID'];
                                    $sql = "select * from user_info where user_id = $id ";
                                    $inner_result = $con->query($sql);
                                    $inner_row = $inner_result->fetch_assoc();
                                    echo "
                                    <tr>
                                        <td>".$inner_row['first_name']." ".$inner_row['last_name']."</td>
                                        <td>".$row['appointment_date']."</td>
                                        <td>".$row['appointment_time']."</td>
                                    </tr>
                                    ";
                                }
                            }
                        ?>
                        
                    </table>
                </div>
            </div>
            <footer></footer>
            <footer class="bg-white sticky-footer" style="background: rgb(242,250,255);height: 34.0px;padding-top: 12px;padding-bottom: 12px;">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © VOSHES 2021</span></div>
                </div>
            </footer>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
        
    </div>
    

<?php
    include('footer.php');
?>