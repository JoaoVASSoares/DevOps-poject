import { Injectable } from "@nestjs/common";

@Injectable()
export class AppService {
  getHello(): string {
    return "Renam minha aplição esta no ar e funcionando muito bem! Teste 02";
  }
}
