resource "aws_iam_group" "Developer" {
  name = "Developer"
  path = "/"
}

resource "aws_iam_group" "Management" {
  name = "Management"
  path = "/"
}

resource "aws_iam_group_membership" "team1" {
  name = "team1-membership"

  users = [
    "${aws_iam_user.Bob.name}",
    "${aws_iam_user.Tim.name}",
    "${aws_iam_user.Ben.name}",
  ]

  group = "${aws_iam_group.Developer.name}"
}

resource "aws_iam_group_membership" "team2" {
  name = "team2-membership"

  users = [
    "${aws_iam_user.Ben.name}",
  ]

  group = "${aws_iam_group.Management.name}"
}
