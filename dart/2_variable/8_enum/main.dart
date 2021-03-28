enum Status {
  wait,
  approved,
  reject,
}

void main() {
  Status currentStatus = Status.wait;
  print(currentStatus == Status.approved);
  print(Status.values.toList());
}
