resource "aws_s3_bucket" "my_bucket" {
    # bucket = "todays-tf-test-bucket"
    bucket = var.bucket_name

    tags = {
        Name = "Ops Time Test Bucket"
        SampleTag = "foo bar"
    }
}

resource "aws_instance" "sample_instance" {
    ami = data.aws_ami.eml1_b.id
    # instance_type = "t2.micro"
    instance_type = data.aws_instance.current_eml.instance_type
    subnet_id = data.aws_instance.current_eml.subnet_id

    tags = {
        Name = "Temporary Ops Instance"
  }
}
