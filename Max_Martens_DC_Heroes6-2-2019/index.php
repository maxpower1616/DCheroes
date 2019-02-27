<?php
	include("database.php");
	
	$TextBox = "";

	$sqlTeam = "SELECT * FROM `team`";

	$teamId = 0;
	$heroId = 0;
	
	//get teamId from database
	if (isset($_GET['teamId']))
	{
		$teamId = $_GET['teamId'];
	}

	//get heroId from database
	if (isset($_GET['heroId']))
	{
		$heroId = $_GET['heroId'];	
	}	
	
	//sql statements
	$sqlHero = "SELECT * FROM `hero` WHERE teamId=$teamId";
	$sqlHeroInfo = "SELECT * FROM `hero` WHERE heroId=$heroId";
	$sqlHeroReview = "SELECT * FROM `rating` WHERE heroId=$heroId ORDER BY `ratingReview` DESC";
	$sqlCount = "SELECT COUNT(*) as total FROM hero WHERE teamId=$teamId";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="description" content="DC Heroes">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="icon" type="image/jpg" href="images/icon.jpg"/>
	<title>DC Heroes - Code Example Layout</title>
</head>
<body>
		<header id="header">
			<a href="index.php?"><img src="images/marvelLogo.jpg" alt="Marvel"></a>
		</header>
		
		<div id="main-container">
			<div id="main-left">
				<h1>Teams</h1>
					<?php
					//getting data from sql statement that is put in a variable
					$result5 = $conn->query($sqlCount);
					if ($result5->num_rows > 0) 
					{
					// output data of each row
						while($row5= $result5->fetch_assoc()) 
						{
					?>				
						<p class="heroes-count" >Heroes in team: &nbsp<?php echo $row5['total']; ?></p>
					<?php
						}
					} 
					?>

					<?php
					//getting data from sql statement that is put in a variable
					$result = $conn->query($sqlTeam);
					if ($result->num_rows > 0) 
					{
					// output data of each row
						while($row = $result->fetch_assoc()) 
						{
					?>
					<nav>
						<ul>
							<li>
								<img class="team-image" src="images/<?php echo $row['teamImage']; ?>" alt="image">
								<a href="index.php?teamId=<?php echo $row['teamId']; ?>"><?php echo $row['teamName']; ?></a>
							</li>
						</ul>
					</nav>

					<?php
						}
					} 
					?>
			</div>

			<div id="main-center">
				<h1>Heroes</h1>
				<?php
					//getting data from sql statement that is put in a variable
					$result2 = $conn->query($sqlHero);
					if ($result2->num_rows > 0) 
					{
					// output data of each row
					while($row2 = $result2->fetch_assoc()) 
					{
				?>
				<div class="hero-container">
					<p>
						<p class="hero-name"><?php echo $row2['heroName']; ?></p>
						<img class="hero-image" src="images/<?php echo $row2['heroImage']; ?>" alt="image">
						<br><br>
						<p class="heroDescription"><?php echo $row2['heroDescription']; ?></p>
						<div>
							<a class="MoreInfo" href="index.php?heroId=<?php echo $row2['heroId']; ?>&teamId=<?php echo $teamId; ?>">
								More Info
							</a>
						</div>
					</p>
				</div>
				<?php
					}
				} 
				?>
			</div>
				
			<div id="main-right">
				<h1>Hero information</h1>
				<?php
					//getting data from sql statement that is put in a variable
					$result3 = $conn->query($sqlHeroInfo);
					if ($result3->num_rows > 0) 
					{
					// output data of each row
					while($row3 = $result3->fetch_assoc()) 
					{
				?>
				<p class="hero-name"><?php echo $row3['heroName']; ?></p>
				<br>
				<img class="hero-image-Description" src="images/<?php echo $row3['heroImage']; ?>" alt="image">
				<div class="hero-description">
					<p><?php echo $row3['heroDescription']; ?></p>
				</div>
				<p class="hero-power">Hero Power:<br><?php echo $row3['heroPower']; ?></p>

				<form method="POST" action="">
					<textarea id="TextBox" name="TextBox" required></textarea><br>
					<p>Rate your hero here</p><br>
					<p>Empty is 0 stars</p><br>
					<p>1<input type="radio" name="star" value="1"></p>
					<p>2<input type="radio" name="star" value="2"></p>
					<p>3<input type="radio" name="star" value="3"></p>
					<p>4<input type="radio" name="star" value="4"></p>
					<p>5<input type="radio" name="star" value="5"></p>
					<button class="submit" type="submit" name="submit">Send</button>
				</form>
					<?php
						if(isset($_POST['submit']))
						{
							$TextBox     = $_POST['TextBox'];

							if(isset($_POST['star']))
							{
							$star		 = $_POST['star'];
							}
							
							else
							{
								$star = 0;
							}

							if ($TextBox != "")
							{
								//insert into the database
								$sqlInsert = "INSERT INTO `rating` (`rating`, `ratingDate`, `ratingReview`, `heroId`)
								VALUES ('$star', NOW(), '$TextBox', '$heroId')"; 
							}
							
							if ($conn->query($sqlInsert) === TRUE) {
								echo "Comment Made";
							} else {
								echo "Error: " . $sqlInsert . "<br>" . $conn->error;
							}   
							//getting data from sql statement that is put in a variable
							$result4 = $conn->query($sqlHeroReview);
							if ($result4->num_rows > 0) 
							{
							// output data of each row
							while($row4 = $result4->fetch_assoc()) 
							{
							?>
							<div class="hero-review">
								<p class="hero-name"><?php echo $row4['ratingReview']; ?></p>
								<br>
								<P><?php echo $row4['ratingDate'];?><p>
								<br>
								<img class="rating-image" src="images/<?php echo $row4['rating'];?>.png" alt="image">
								<hr>			
							</div>
							<?php
								}
							} 
							$conn->close();
						}
						else
						{
							//getting data from sql statement that is put in a variable
							$result4 = $conn->query($sqlHeroReview);
							if ($result4->num_rows > 0) 
							{
							// output data of each row
							while($row4 = $result4->fetch_assoc()) 
							{
							?>
							<div class="hero-review">
								<p class="hero-name"><?php echo $row4['ratingReview'];?></p>
								<br>
								<P><?php echo $row4['ratingDate'];?><p>
								<br>
								<img class="rating-image" src="images/<?php echo $row4['rating'];?>.png" alt="image">
								<hr>
							</div>
							<?php
								}
							} 
						}
					?>

				<?php
					}
				} 
				?>

			</div>
			<div class="clearfix"></div>
		</div>

		<div id="footer">
			Roc Ter AA
		</div>
</body>
</html>