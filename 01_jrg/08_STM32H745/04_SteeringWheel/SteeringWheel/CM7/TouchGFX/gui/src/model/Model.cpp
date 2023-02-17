#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>


//extern int indx;
//extern osMessageQueueId_t Q_send_GUI;
//extern osThreadId_t idtaskfeedGUI;

Model::Model() : modelListener(0)
{

}

void Model::tick()
{
	uint8_t priority;
	GUIMessage_t msg;
	
	osMessageQueueGet(Q_send_GUI, &msg, &priority, 10);
	
	modelListener->updateData(msg);
}
