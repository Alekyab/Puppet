
include java


node 'puppet-94c34466-bcae-40e5-9fb6-f65558065c02.novalocal' {

	include hadoop::namenode
}

node 'puppet-686bc64a-931c-4365-958d-358ecff68905.novalocal' {
	
	include hadoop::resourcemanager
	include hadoop::secondarynamenode

}

node 'puppet-046f708b-78db-493b-82f8-953b70cfbf2a.novalocal' {
	include hadoop::datanode
	include hadoop::nodemanager

} 
