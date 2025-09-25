resource "aws_iam_role_policy_attachment" "cloud_watch_agent_policy_attachment" {
  role       = aws_iam_role.eks_pod_identity.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}