import boto3
import sys

ec2 = boto3.client('ec2')

def listar():
    response = ec2.describe_instances()
    for r in response['Reservations']:
        for i in r['Instances']:
            print(i['InstanceId'], i['State']['Name'])

def iniciar(instance_id):
    ec2.start_instances(InstanceIds=[instance_id])
    print("Instancia iniciada")

def detener(instance_id):
    ec2.stop_instances(InstanceIds=[instance_id])
    print("Instancia detenida")

def terminar(instance_id):
    ec2.terminate_instances(InstanceIds=[instance_id])
    print("Instancia terminada")

if __name__ == "__main__":
    accion = sys.argv[1]

    if accion == "listar":
        listar()
    else:
        instance_id = sys.argv[2]

        if accion == "iniciar":
            iniciar(instance_id)
        elif accion == "detener":
            detener(instance_id)
        elif accion == "terminar":
            terminar(instance_id)
        else:
            print("Acción no válida")
