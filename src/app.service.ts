import { Injectable } from "@nestjs/common";

@Injectable()
export class AppService {
  getHello(): string {
    return "Renam esta é minha aplicação funcionando em um container docker!!";
  }
}
