package site.toeicdoit.chat.service;

import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.domain.model.RoomFluxModel;

public interface RoomService extends CommandService<RoomFluxModel, RoomDTO>, QueryService<RoomFluxModel, RoomDTO>{
    
}
