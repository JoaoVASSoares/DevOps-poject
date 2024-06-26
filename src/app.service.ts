import { Injectable } from "@nestjs/common";

@Injectable()
export class AppService {
  getHello(): string {
    return "Renam minha aplicação esta completamente funcional !! GOOGLE CLOUD";
  }
}
