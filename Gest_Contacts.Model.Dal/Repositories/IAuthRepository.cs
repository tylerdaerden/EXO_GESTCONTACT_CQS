using Gest_Contacts.Model.Dal.Entities;

namespace Gest_Contacts.Model.Dal.Repositories
{
    public interface IAuthRepository
    {
        void Register(Utilisateur utilisateur);
    }
}
