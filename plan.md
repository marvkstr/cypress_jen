1. Checkout 
1. „e2e"-Test der main.go mit e2e_test.sh
1. push image to ecr
1. deploy auf ecs/ec2
1. Health-Check des go-Containers abfragen
1. curl auf /success
1. - Bei erfolgreichem Deployment: successful_commit.txt in das repository schreiben und dort den current commit hash einsetzen 
   - bei fehlgeschlagenem Test oder Health Check: rollback auf previous commit aus successful_commit.txt