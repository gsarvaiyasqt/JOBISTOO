enum JOBSTYPE {
  JOBS,BUSINESS
}

enum STATUSTYPE {
  PENDING,COMPLETED
}

extension StatusType on STATUSTYPE{

  String? get title {

    switch(this){
       case STATUSTYPE.PENDING:
       return "pending";
       case STATUSTYPE.COMPLETED:
       return "completed";
    }

    return null;

}

}